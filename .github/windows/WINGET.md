# WinGet release publication

The Windows release pipeline builds one compiler per architecture and packages it into both ABI ZIPs, producing six tested variants. ZIP directory records are stored without compression, because WinGet's pure ZIP checker rejects directory entries with nonzero compressed data. `release_zip.py` compares every file and directory against the staging tree when building the ZIP and verifies the extracted contents during artifact tests; `test-release.ps1` executes the ZIP's compiler before and after native dependencies are installed.

The `prepare-winget` job emits the `llgo-winget-candidates` workflow artifact after all Windows artifact tests pass. Once the stable tag's `release` job succeeds in `xgo-dev/llgo`, `submit-winget` calls [winget.yml](../workflows/winget.yml) to open one PR for each of `XGo.LLGo.MSVC` and `XGo.LLGo.MinGW`. Each contains x86, x64 and ARM64 installers. Microsoft requires one package/version per PR. Both packages expose `llgo`, so users should select one ABI profile on PATH.

## One-time setup

1. Fork `microsoft/winget-pkgs` as `xgo-dev/winget-pkgs`. The submission script verifies that parent relationship. It creates only `llgo/<abi>/<version>` contribution branches based on the current upstream default branch; it does not synchronize or push either repository's default branch.
2. Give the submitting account write access to the fork and complete the [Microsoft CLA](https://cla.opensource.microsoft.com).
3. Set the `WINGET_PR_TOKEN` Actions secret in `xgo-dev/llgo` to that account's classic PAT with `public_repo` scope (and authorize organization SSO if required):

   ```sh
   gh secret set WINGET_PR_TOKEN --repo xgo-dev/llgo
   ```

The repository's `GITHUB_TOKEN` cannot write to the fork or submit to Microsoft. A fine-grained token limited to `xgo-dev` cannot cover the Microsoft PR operation; see [GitHub's token limitations](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#fine-grained-personal-access-tokens-limitations). A missing secret fails the submission job with a setup instruction, after the release has already been published.

## Automatic submission and recovery

Only published stable `vMAJOR.MINOR.PATCH` releases are accepted. Snapshot, draft and prerelease builds do not submit. The script verifies all six public ZIP asset URLs and SHA256 digests against the published checksum file, and verifies that file's own GitHub digest. It then renders the same schema 1.12.0 manifests as the local candidate generator. It does not re-download the multi-gigabyte ZIP set or depend on expiring workflow artifacts.

The release workflow calls submission directly because [events generated with `GITHUB_TOKEN` do not trigger another release workflow](https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows). Submission failures can be retried without rebuilding or republishing LLGo:

```sh
# Read-only preview; also works on an LLGo fork.
gh workflow run winget.yml --repo xgo-dev/llgo -f tag=v1.0.8 -F dry_run=true
# Submit/recover both packages for an already published stable release.
gh workflow run winget.yml --repo xgo-dev/llgo -f tag=v1.0.8 -F dry_run=false
```

The workflow summary links submitted or existing PRs. An already published version is skipped. Existing PRs, including another contributor's matching package/version, are left untouched. If a run stopped after creating a branch, the next run verifies its three manifest files before opening the PR. Unexpected branch edits or a closed submission require manual inspection; the script never force-pushes, reopens, merges or closes PRs. The two ABI submissions run independently, and retries for the same tag are serialized.

PR descriptions distinguish the release ZIP tests from WinGet's installation validation. They do not claim that `winget validate` or `winget install` ran during submission; Microsoft's validation checks run on the contribution PR. The submitting account must address those results and review comments.

## Local candidates and validation

To prepare the same candidates locally with Python 3.11 or newer:

```sh
python .github/windows/prepare-winget.py \
  --artifacts .windows-dist --version 1.2.3 --output .winget
```

`1.2.3` is an example: use the actual release version without `v`. The input directory must contain all six `llgo<VERSION>.windows-{386,amd64,arm64}-{msvc,mingw}.zip` files and their `.zip.sha256` sidecars. The generator hashes the actual ZIP bytes, checks release version/architecture/ABI metadata, requires a common source commit and identical compiler hashes for both profiles of each architecture, and emits standard version/installer/defaultLocale YAML files. The public installer URLs point to the matching `v<VERSION>` GitHub release.

Before submitting to [microsoft/winget-pkgs](https://github.com/microsoft/winget-pkgs):

1. Publish the tested ZIPs through the normal tag release. Confirm every public URL serves the bytes whose hashes appear in the candidates. PR/snapshot artifacts alone do not establish that those URLs exist.
2. Run `winget validate --manifest <version-directory>` for each profile, then test real installation, command startup, upgrade, and uninstall on a clean Windows environment. Keep WinGet's archive and hash checks enabled.
3. Submit the reviewed `manifests/x/XGo/LLGo/...` directories, or use the recovery workflow above. It detects an existing package/version PR before creating another.

For a local read-only preview using published release metadata:

```sh
python .github/windows/submit-winget.py --tag v1.0.8 --profile msvc --dry-run
python .github/windows/submit-winget.py --tag v1.0.8 --profile mingw --dry-run
```

The MinGW installer manifest sets `ArchiveBinariesDependOnPath: true`; MSVC retains the portable alias. Both point at `bin/llgo.exe` and include the external dependency notes from [WINDOWS.md](../../WINDOWS.md). No complete SDK/toolchain bundle is implied.

Do not copy local validation `ProductCode` values ending in `__DefaultSource` into public manifests. A synthetic packaging upgrade using unchanged compiler bytes validates only the local lifecycle. In the local WinGet 1.29.290 test, upgrading a portable package moved it from the custom location to WinGet's default location; do not promise custom-location preservation from that test.
