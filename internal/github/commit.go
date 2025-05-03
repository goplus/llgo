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
	"strings"
)

// Author represents a github user or bot.
type Author struct {
	Login     string `json:"login"`      // github-actions[bot]
	ID        int    `json:"id"`         // 41898282
	NodeID    string `json:"node_id"`    // MDM6Qm90NDE4OTgyODI=
	AvatarURL string `json:"avatar_url"` // https://avatars.githubusercontent.com/in/15368?v=4
	URL       string `json:"url"`        // https://api.github.com/users/github-actions%5Bbot%5D
	HtmlURL   string `json:"html_url"`   // https://github.com/apps/github-actions
	Type      string `json:"type"`       // Bot
	SiteAdmin bool   `json:"site_admin"` // false
}

// CommitAuthor represents the author of a GitHub commit.
type CommitAuthor struct {
	Name  string `json:"name"`  // xushiwei
	Email string `json:"email"` // x@goplus.org
	Date  string `json:"date"`  // 2025-04-21T14:13:29Z
}

// CommitSummary represents the summary of a GitHub commit.
type CommitSummary struct {
	Author  CommitAuthor `json:"author"`
	Message string       `json:"message"` // Merge pull request #2296 from goplus/main\n\nv1.4.0
}

// CommitDetail represents the details of a GitHub commit.
type CommitDetail struct {
	NodeID string        `json:"node_id"` // C_kwDOAtpGOtoAKDE2OGEwODlmOWY5ZTNhNDdhMTliMTRjZDczODQ4N2M2ZTJkMTMxYmE
	Commit CommitSummary `json:"commit"`
	Author Author        `json:"author"`
}

func commitURL(pkgPath, sha string) string {
	return "https://api.github.com/repos/" + pkgPath + "/commits/" + sha
}

// GetCommit retrieves the details of a specific commit from a GitHub repository.
func GetCommit(pkgPath, shaOrURL string) (ret *CommitDetail, err error) {
	url := shaOrURL
	if !strings.HasPrefix(shaOrURL, "https://") {
		url = commitURL(pkgPath, shaOrURL)
	}
	resp, err := http.Get(url)
	if err != nil {
		return
	}
	defer resp.Body.Close()

	ret = new(CommitDetail)
	err = json.NewDecoder(resp.Body).Decode(ret)
	return
}
