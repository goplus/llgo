/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package github

import (
	"encoding/json"
	"net/http"
)

// ReleaseAsset represents a GitHub release asset.
type ReleaseAsset struct {
	URL                string `json:"url"`                  // https://api.github.com/repos/flintlib/flint/releases/assets/242245930
	ID                 int64  `json:"id"`                   // 242245930
	NodeID             string `json:"node_id"`              // RA_kwDOAC8YHs4OcGEq
	Name               string `json:"name"`                 // flint-3.2.2.tar.gz
	ContentType        string `json:"content_type"`         // application/x-gtar
	State              string `json:"state"`                // uploaded
	Size               int64  `json:"size"`                 // 123456
	DownloadCount      int    `json:"download_count"`       // 176
	UpdatedAt          string `json:"updated_at"`           // 2025-03-31T08:54:16Z
	BrowserDownloadURL string `json:"browser_download_url"` // https://github.com/flintlib/flint/releases/download/v3.2.2/flint-3.2.2.tar.gz
}

// Release represents a GitHub release.
type Release struct {
	URL             string          `json:"url"`              // https://api.github.com/repos/flintlib/flint/releases/209285187
	ID              int64           `json:"id"`               // 209285187
	NodeID          string          `json:"node_id"`          // RE_kwDOAC8YHs4MeXBD
	TagName         string          `json:"tag_name"`         // v3.2.2
	TargetCommitish string          `json:"target_commitish"` // b8223680e38ad048355a421bf7f617bb6c5d5e12
	Name            string          `json:"name"`             // FLINT v3.2.2
	PublishedAt     string          `json:"published_at"`     // 2025-03-31T08:54:16Z
	Body            string          `json:"body"`             // Release Notes
	TarballURL      string          `json:"tarball_url"`      // https://api.github.com/repos/flintlib/flint/tarball/v3.2.2
	ZipballURL      string          `json:"zipball_url"`      // https://api.github.com/repos/flintlib/flint/zipball/v3.2.2
	Author          Author          `json:"author"`
	Assets          []*ReleaseAsset `json:"assets"`
	Prerelease      bool            `json:"prerelease"`
}

// releaseURL constructs the URL for a GitHub release.
func releaseURL(pkgPath, ver string) string {
	if ver == "" || ver == "latest" {
		return "https://api.github.com/repos/" + pkgPath + "/releases/latest"
	}
	return "https://api.github.com/repos/" + pkgPath + "/releases/tags/" + ver
}

// GetRelease fetches the release information from GitHub.
func GetRelease(pkgPath, ver string) (ret *Release, err error) {
	url := releaseURL(pkgPath, ver)
	resp, err := http.Get(url)
	if err != nil {
		return
	}
	defer resp.Body.Close()

	ret = new(Release)
	err = json.NewDecoder(resp.Body).Decode(ret)
	return
}
