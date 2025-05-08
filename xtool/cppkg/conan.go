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

package cppkg

import (
	"crypto/md5"
	"encoding/base64"
	"encoding/hex"
	"errors"
	"fmt"
	"io"
	"net/http"
	"os"
	"os/exec"
	"strings"
	"time"

	"github.com/goccy/go-yaml"
	"github.com/goplus/llgo/internal/github"
	"github.com/qiniu/x/byteutil"
	"github.com/qiniu/x/httputil"
)

var conanCmd = NewTool("conan", []string{
	"brew install conan",
	"apt-get install conan",
})

type conandata struct {
	Sources map[string]any `yaml:"sources"`
}

func replaceVer(src any, fromVer, toVer string) any {
	switch src := src.(type) {
	case map[string]any:
		doReplace(src, fromVer, toVer)
	case []any:
		for _, u := range src {
			doReplace(u.(map[string]any), fromVer, toVer)
		}
	}
	return src
}

func doReplace(src map[string]any, fromVer, toVer string) {
	switch url := src["url"].(type) {
	case string:
		src["url"] = strings.ReplaceAll(url, fromVer, toVer)
		delete(src, "sha256")
		// TODO(xsw): src["sha256"] = hash
	case []any:
		for i, u := range url {
			url[i] = strings.ReplaceAll(u.(string), fromVer, toVer)
		}
		delete(src, "sha256")
		// TODO(xsw): src["sha256"] = hash
	}
}

type githubRelease struct {
	PublishedAt string
}

func getRelease(pkg *Package, tagPattern string) (ret *githubRelease, err error) {
	if tagPattern == "" {
		return nil, ErrDynamicTag
	}
	if pkg.gr != nil {
		return &githubRelease{PublishedAt: pkg.gr.PublishedAt}, nil
	}
	ver := strings.Replace(tagPattern, "*", pkg.Version, 1)
	gr, err := github.GetRelease(pkg.Path, ver)
	if err == nil {
		ret = &githubRelease{PublishedAt: gr.PublishedAt}
		return
	}
	t, err := github.GetTag(pkg.Path, ver)
	if err != nil {
		return
	}
	c, err := github.GetCommit(pkg.Path, t.Commit.URL)
	if err == nil {
		ret = &githubRelease{PublishedAt: c.Commit.Author.Date}
	}
	return
}

// Install installs the specified package using Conan.
func (p *Manager) Install(pkg *Package, options []string, flags int) (buildDir string, err error) {
	buildDir = p.BuildDir(pkg, options)
	os.MkdirAll(buildDir, os.ModePerm)

	var rev string
	var gr *githubRelease
	var conandataYml, conanfilePy []byte

	conanfileDir := p.conanfileDir(pkg.Path, pkg.Folder)
	pkgVer := pkg.Version
	template := pkg.Template
	if template != nil {
		gr, err = getRelease(pkg, template.Tag)
		if err != nil {
			return
		}

		err = copyDirR(conanfileDir, buildDir)
		if err != nil {
			return
		}

		conanfilePy, err = os.ReadFile(buildDir + "/conanfile.py")
		if err != nil {
			return
		}

		conandataFile := buildDir + "/conandata.yml"
		conandataYml, err = os.ReadFile(conandataFile)
		if err != nil {
			return
		}
		var cd conandata
		err = yaml.Unmarshal(conandataYml, &cd)
		if err != nil {
			return
		}
		fromVer := template.FromVer
		source, ok := cd.Sources[fromVer]
		if !ok {
			return "", ErrVersionNotFound
		}
		cd.Sources = map[string]any{
			pkgVer: replaceVer(source, fromVer, pkgVer),
		}
		conandataYml, err = yaml.Marshal(cd)
		if err != nil {
			return
		}
		err = os.WriteFile(conandataFile, conandataYml, os.ModePerm)
		if err != nil {
			return
		}
		rev = recipeRevision(pkg, gr, conandataYml)
		conanfileDir = buildDir
	}

	outFile := buildDir + "/out.json"
	out, err := os.Create(outFile)
	if err == nil {
		defer out.Close()
	} else {
		out = os.Stdout
	}

	nameAndVer := pkg.Name + "/" + pkgVer
	if template == nil {
		err = conanInstall(nameAndVer, buildDir, conanfileDir, out, options, flags)
		return
	}

	logFile := ""
	if flags&LogRevertProxy != 0 {
		logFile = buildDir + "/rp.log"
	}
	err = remoteProxy(flags, logFile, func() error {
		return conanInstall(nameAndVer, buildDir, conanfileDir, out, options, flags)
	}, func(mux *http.ServeMux) {
		base := "/v2/conans/" + nameAndVer
		revbase := base + "/_/_/revisions/" + rev
		mux.HandleFunc(base+"/_/_/latest", func(w http.ResponseWriter, r *http.Request) {
			h := w.Header()
			h.Set("Cache-Control", "public,max-age=300")
			httputil.Reply(w, http.StatusOK, map[string]any{
				"revision": rev,
				"time":     gr.PublishedAt,
			})
		})
		mux.HandleFunc(revbase+"/files", func(w http.ResponseWriter, r *http.Request) {
			h := w.Header()
			h.Set("Cache-Control", "public,max-age=3600")
			empty := map[string]any{}
			httputil.Reply(w, http.StatusOK, map[string]any{
				"files": map[string]any{
					"conan_export.tgz":  empty,
					"conanmanifest.txt": empty,
					"conanfile.py":      empty,
				},
			})
		})
		mux.HandleFunc(revbase+"/files/conanfile.py", func(w http.ResponseWriter, r *http.Request) {
			h := w.Header()
			h.Set("Cache-Control", "public,max-age=3600")
			h.Set("Content-Disposition", `attachment; filename="conanfile.py"`)
			httputil.ReplyWith(w, http.StatusOK, "text/x-python", conanfilePy)
		})
		const conanmanifest = "%d\nconandata.yml: %s\nconanfile.py: %s\n"
		mux.HandleFunc(revbase+"/files/conanmanifest.txt", func(w http.ResponseWriter, r *http.Request) {
			mtime, err := unixTime(gr.PublishedAt)
			if err != nil {
				replyError(w, err)
				return
			}
			h := w.Header()
			h.Set("Cache-Control", "public,max-age=3600")
			h.Set("Content-Disposition", `attachment; filename="conanmanifest.txt"`)
			data := fmt.Sprintf(conanmanifest, mtime, md5Of(conandataYml), md5Of(conanfilePy))
			httputil.ReplyWithStream(w, http.StatusOK, "text/plain", strings.NewReader(data), int64(len(data)))
		})
		mux.HandleFunc(revbase+"/files/conan_export.tgz", func(w http.ResponseWriter, r *http.Request) {
			conanExportTgz, err := tgzOfConandata(buildDir)
			if err != nil {
				replyError(w, err)
				return
			}
			h := w.Header()
			h.Set("Cache-Control", "public,max-age=3600")
			h.Set("Content-Disposition", `attachment; filename="conan_export.tgz"`)
			httputil.ReplyWith(w, http.StatusOK, "application/x-gzip", conanExportTgz)
		})
	})
	return
}

func (p *Manager) BuildDir(pkg *Package, options []string) string {
	dir := p.cacheDir + "/build/" + pkg.Name + "@" + pkg.Version
	if options != nil {
		h := md5.New()
		for _, opt := range options {
			h.Write(byteutil.Bytes(opt))
		}
		hash := base64.RawURLEncoding.EncodeToString(h.Sum(nil))
		dir += "/" + hash
	} else {
		dir += "/static"
	}
	return dir
}

func (p *Manager) conanfileDir(pkgPath, pkgFolder string) string {
	root := p.IndexRoot()
	return root + "/" + pkgPath + "/" + pkgFolder
}

func conanInstall(pkg, outDir, conanfileDir string, out io.Writer, options []string, flags int) (err error) {
	args := make([]string, 0, 16)
	args = append(args, "install",
		"--requires", pkg,
		"--generator", "PkgConfigDeps",
		"--build", "missing",
		"--format", "json",
		"--output-folder", outDir,
	)
	for _, opt := range options {
		args = append(args, "--options", opt)
	}
	quietInstall := flags&ToolQuietInstall != 0
	cmd, err := conanCmd.New(quietInstall, args...)
	if err != nil {
		return
	}
	cmd.Dir = conanfileDir
	cmd.Stderr = os.Stderr
	cmd.Stdout = out
	err = cmd.Run()
	return
}

func recipeRevision(_ *Package, _ *githubRelease, conandataYml []byte) string {
	return md5Of(conandataYml)
}

func md5Of(data []byte) string {
	h := md5.New()
	h.Write(data)
	return hex.EncodeToString(h.Sum(nil))
}

func tgzOfConandata(outDir string) (_ []byte, err error) {
	cmd := exec.Command("tar", "-czf", "conan_export.tgz", "conandata.yml")
	cmd.Dir = outDir
	err = cmd.Run()
	if err != nil {
		return
	}
	return os.ReadFile(outDir + "/conan_export.tgz")
}

func unixTime(tstr string) (ret int64, err error) {
	t, err := time.Parse(time.RFC3339, tstr)
	if err == nil {
		ret = t.Unix()
	}
	return
}

func copyDirR(srcDir, destDir string) error {
	if cp, err := exec.LookPath("cp"); err == nil {
		return exec.Command(cp, "-r", "-p", srcDir+"/", destDir).Run()
	}
	if cp, err := exec.LookPath("xcopy"); err == nil {
		// TODO(xsw): check xcopy
		return exec.Command(cp, "/E", "/I", "/Y", srcDir+"/", destDir).Run()
	}
	return errors.New("copy command not found")
}
