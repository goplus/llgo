param(
  [Parameter(Mandatory = $true)]
  [ValidateSet('msvc', 'mingw')][string]$Profile,
  [Parameter(Mandatory = $true)]
  [ValidateSet('amd64', 'arm64', '386')][string]$GoArch,
  [Parameter(Mandatory = $true)][string]$HostCompilerDirectory,
  [string]$X86ToolchainDirectory
)

$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'release-lib.ps1')
$root = (Get-Location).Path
$metadata = Get-Content -Raw '.windows-dist/metadata.json' | ConvertFrom-Json
$commit = (& git rev-parse HEAD).Trim()
if ($LASTEXITCODE -ne 0 -or $metadata.commit -ne $commit) {
  throw 'The GoReleaser metadata does not describe this checkout'
}
if ($metadata.version -notmatch '^[0-9A-Za-z][0-9A-Za-z.+-]*$') {
  throw "Invalid release version: $($metadata.version)"
}
$llvmVersion = '22.1.8'
$buildTime = ([DateTimeOffset]$metadata.date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
Assert-ReleaseCompilerArtifact -Root $HostCompilerDirectory -Metadata $metadata -GoArch $GoArch -LLVMVersion $llvmVersion
$stage = Join-Path $env:RUNNER_TEMP "llgo-release-$GoArch-$Profile"
if (Test-Path $stage) { Remove-Item -LiteralPath $stage -Recurse -Force }
New-Item -ItemType Directory -Force $stage | Out-Null
Copy-Item -LiteralPath (Join-Path $HostCompilerDirectory 'bin') -Destination $stage -Recurse
$bin = Join-Path $stage 'bin'
$executable = Join-Path $bin 'llgo.exe'
foreach ($entry in @('LICENSE', 'LICENSES', 'README.md', 'WINDOWS.md', 'THIRD_PARTY_NOTICES.md', 'runtime', 'targets')) {
  Copy-Item -LiteralPath (Join-Path $root $entry) -Destination $stage -Recurse
}
Copy-Item -LiteralPath (Join-Path $HostCompilerDirectory 'licenses') `
  -Destination (Join-Path $stage 'LICENSES/windows-runtime') -Recurse

# ESP tools match the LLGo host architecture for both MSVC and MinGW packages.
$espVersion = '22.1.4_20260912'
$espTarget = @{ amd64 = 'x86_64-w64-mingw32'; arm64 = 'aarch64-w64-mingw32'; '386' = 'i686-w64-mingw32' }[$GoArch]
$espChecksums = @{
  amd64 = '49ba5159967f1f3cdc11b51d902595baaf0f94bf6c73fb4b880940f30a2d6f4f'
  arm64 = '02521d03911dadbd84ecfb27903e59dae1d9f12c45245982caea7dad6e6d4188'
}
$espChecksum = if ($GoArch -eq '386') {
  $sourceArchive = Join-Path $X86ToolchainDirectory "clang-esp-$espVersion-$espTarget.tar.xz"
  (Get-FileHash -Algorithm SHA256 $sourceArchive).Hash.ToLowerInvariant()
} else { $espChecksums[$GoArch] }
if (-not $espChecksum) { throw "Missing pinned ESP Clang checksum for windows/$GoArch" }
$espAsset = "clang-esp-$espVersion-$espTarget.tar.xz"
$espParent = Join-Path $env:RUNNER_TEMP ('llgo-release-esp-' + [Guid]::NewGuid())
try {
  if ($GoArch -eq '386') {
    Expand-ReleaseLocalXz -Archive $sourceArchive -Destination $espParent
  } else {
    Expand-ReleaseXz `
      -URL "https://github.com/xgo-dev/espressif-llvm-project-prebuilt/releases/download/$espVersion/$espAsset" `
      -SHA256 $espChecksum `
      -CacheDirectory (Join-Path $env:RUNNER_TOOL_CACHE 'llgo-release-downloads/esp') `
      -Destination $espParent
  }
  $crosscompile = Join-Path $stage 'crosscompile'
  New-Item -ItemType Directory $crosscompile | Out-Null
  Move-Item -LiteralPath (Join-Path $espParent 'esp-clang') -Destination (Join-Path $crosscompile 'clang')
} finally {
  if (Test-Path $espParent) { Remove-Item -LiteralPath $espParent -Recurse -Force }
}
# Validate from the final location so tools executed by these checks are not
# subsequently moved or deleted with the temporary extraction directory.
Assert-ReleaseESPPayload -Root (Join-Path $crosscompile 'clang') -GoArch $GoArch -Version $espVersion
$readObj = Join-Path $crosscompile 'clang/bin/llvm-readobj.exe'
Copy-ReleaseDLLs -ReadObj $readObj -Executable $executable -GoArch $GoArch -Profile 'msvc' -CheckOnly
Copy-Item -LiteralPath (Join-Path $root 'LICENSES/XGo-LLVM-Apache-2.0-WITH-LLVM-exception.txt') `
  -Destination (Join-Path $stage 'crosscompile/clang/LICENSE-LLVM.txt')
@{
  version = $metadata.version
  commit = $commit
  date = $buildTime
  goos = 'windows'
  goarch = $GoArch
  abi = $Profile
  llvm_version = $llvmVersion
  compiler_sha256 = (Get-FileHash -Algorithm SHA256 $executable).Hash.ToLowerInvariant()
  esp_clang_version = $espVersion
  esp_clang_host = "windows/$GoArch"
  esp_clang_sha256 = $espChecksum
} | ConvertTo-Json | Set-Content -Encoding utf8 (Join-Path $stage 'release.json')

# Directory records must be STORE for WinGet compatibility.
$zipName = "llgo$($metadata.version).windows-$GoArch-$Profile.zip"
$zip = Join-Path $root ".windows-dist/$zipName"
& python (Join-Path $PSScriptRoot 'release_zip.py') create $zip $stage
if ($LASTEXITCODE -ne 0) { throw 'Creating or verifying the Windows ZIP failed' }
$zipChecksum = (Get-FileHash -Algorithm SHA256 $zip).Hash.ToLowerInvariant()
"$zipChecksum  $zipName" | Set-Content -Encoding ascii "$zip.sha256"
Write-Host "Created $zip"
