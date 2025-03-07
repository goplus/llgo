/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
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

// Package get implements the "llgo get" command.
package get

import (
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"time"

	"github.com/goplus/llgo/compiler/cmd/internal/base"
	"github.com/goplus/llgo/compiler/internal/mockable"
	"golang.org/x/mod/modfile"
	"golang.org/x/mod/module"
	"golang.org/x/mod/semver"
)

type Versions []struct {
	C  string   `json:"c"`
	Go []string `json:"go"`
}

const (
	llpkgstorePrefix   = "github.com/goplus/llpkg/"
	llpkgstoreJSONURL  = "https://llpkg.goplus.org/llpkgstore.json"
	llpkgstoreJSONPath = "llpkgstore.json"
)

// llgo get
var Cmd = &base.Command{
	UsageLine: "llgo get [clibs/packages]",
	Short:     "Add dependencies to current module and install them",
}

func init() {
	Cmd.Run = runCmd
}

func runCmd(cmd *base.Command, args []string) {
	if len(args) == 0 || len(args) >= 2 {
		mockable.Exit(1)
	}

	// when get packages, we expect that loadJSONCache() and isJSONFileUpdate() are invoked at most once

	var modulePath string
	path, version := parse(args[0])

	ModuleError := module.Check(path, version)
	if ModuleError == nil {
		modulePath = path + "@" + version
	} else {
		jsonData, err := loadJSONCache(llpkgstoreJSONPath)
		if err != nil {
			fmt.Println("llgo:", err)
			mockable.Exit(1)
		}

		updateJSON, ClibError := checkClib(jsonData, path, version)
		if ClibError == nil {
			modulePath = llpkgstorePrefix + path + "@" + version
		} else if updateJSON {
			update, err := isJSONFileUpdate(llpkgstoreJSONURL, llpkgstoreJSONPath)
			if err != nil {
				fmt.Println("llgo:", err)
				mockable.Exit(1)
			}

			if update {
				var jsonData map[string]interface{}
				jsonData, err = downloadJSON(llpkgstoreJSONURL)
				if err != nil {
					fmt.Println("llgo:", err)
					mockable.Exit(1)
				}

				err = saveJSON(llpkgstoreJSONPath, jsonData)
				if err != nil {
					fmt.Println("llgo:", err)
					mockable.Exit(1)
				}

				_, ClibError := checkClib(jsonData, path, version)
				if ClibError == nil {
					modulePath = llpkgstorePrefix + path + "@" + version
				} else {
					fmt.Println("llgo:", err)
					mockable.Exit(1)
				}
			} else {
				fmt.Println("llgo:", ClibError)
				mockable.Exit(1)
			}

		} else {
			fmt.Println("llgo:", ClibError)
			mockable.Exit(1)
		}
	}

	goGetCmd := exec.Command("go", "get", modulePath)
	_, err := goGetCmd.CombinedOutput()
	if err != nil {
		fmt.Println("llgo:", err)
		mockable.Exit(1)
	}

	llpkgCfgPath := searchLLPkgCfg(modulePath)
	if llpkgCfgPath != "" {
		// conan install
		err := annotate(path, version)
		if err != nil {
			fmt.Println("llgo:", err)
			mockable.Exit(1)
		}
	}
}

func parse(s string) (path, version string) {
	index := strings.Index(s, "@")
	if index >= 0 {
		path = s[:index]
		version = s[(index + 1):]
	} else {
		path = s
	}

	return path, version
}
func checkClib(jsonData map[string]interface{}, clib, cversion string) (bool, error) {
	if !semver.IsValid(cversion) {
		return false, &module.ModuleError{
			Path: clib,
			Err:  &module.InvalidVersionError{Version: cversion, Err: errors.New("not a semantic version")},
		}
	}

	clibInfo, isClib := jsonData[clib].(map[string]interface{})
	if !isClib {
		return true, fmt.Errorf("llgo: %v is not a semantic clib", clib)
	}

	versions, _ := clibInfo["versions"].(Versions)
	for _, versionMapping := range versions {
		if versionMapping.C == cversion {
			return false, nil
		}
	}

	return true, fmt.Errorf("not found %v@%v", clib, cversion)
}

func loadJSONCache(filePath string) (map[string]interface{}, error) {
	var jsonData map[string]interface{}

	cacheExists := checkCacheExists(filePath)
	if cacheExists {
		data, err := os.ReadFile(filePath)
		if err != nil {
			return nil, fmt.Errorf("error read file from cache: %v", err)
		}

		err = json.Unmarshal(data, &jsonData)
		if err != nil {
			return nil, fmt.Errorf("error json unmarshal from cache: %v", err)
		}
	}

	return jsonData, nil
}

func saveJSON(filePath string, data map[string]interface{}) error {
	jsonData, err := json.Marshal(data)
	if err != nil {
		return err
	}

	return os.WriteFile(filePath, jsonData, 0644)
}

func checkCacheExists(filePath string) bool {
	_, err := os.Stat(filePath)
	return !os.IsNotExist(err)
}

func isJSONFileUpdate(url, cacheFilePath string) (bool, error) {
	cacheModTime := time.Time{}
	if checkCacheExists(cacheFilePath) {
		fileInfo, err := os.Stat(cacheFilePath)
		if err != nil {
			return false, err
		}
		cacheModTime = fileInfo.ModTime()
	}

	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return false, err
	}
	if !cacheModTime.IsZero() {
		req.Header.Set("If-Modified-Since", cacheModTime.Format(http.TimeFormat))
	}

	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		return false, err
	}
	defer resp.Body.Close()

	return resp.StatusCode != http.StatusNotModified, nil
}

func downloadJSON(url string) (map[string]interface{}, error) {
	resp, err := http.Get(url)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, err
	}

	var jsonData map[string]interface{}
	err = json.Unmarshal(body, &jsonData)
	if err != nil {
		return nil, err
	}

	return jsonData, nil
}

func searchLLPkgCfg(modulePath string) (llpkgCfgPath string) {
	cacheDir := os.Getenv("GOMODCACHE")
	if cacheDir == "" {
		cacheDir = filepath.Join(os.Getenv("GOPATH"), "pkg", "mod")
	}

	llpkgCfgPath = filepath.Join(cacheDir, modulePath, "llpkg.cfg")
	if _, err := os.Stat(llpkgCfgPath); os.IsNotExist(err) {
		return ""
	}

	return llpkgCfgPath
}

func searchModFile(modulePath string) (modfilePath string) {
	cacheDir := os.Getenv("GOMODCACHE")
	if cacheDir == "" {
		cacheDir = filepath.Join(os.Getenv("GOPATH"), "pkg", "mod")
	}
	modfilePath = filepath.Join(cacheDir, modulePath, "go.mod")

	return modfilePath
}

func annotate(clib, cversion string) error {
	modulePath := llpkgstorePrefix + clib + "@" + cversion
	modFilePath := searchModFile(modulePath)

	modfileData, err := os.ReadFile(modFilePath)
	if err != nil {
		return fmt.Errorf("failed to read go.mod: %v", err)
	}

	modFile, err := modfile.Parse(modFilePath, modfileData, nil)
	if err != nil {
		return fmt.Errorf("failed to parse go.mod: %v", err)
	}

	for _, req := range modFile.Require {
		modModulePath := req.Mod.Path + "@" + req.Mod.Version
		if modulePath == modModulePath {
			req.Syntax.Comments.Suffix = append(req.Syntax.Comments.Suffix, modfile.Comment{
				Suffix: true,
				Token:  clib + " " + cversion,
				Start: modfile.Position{
					Line:     req.Syntax.Start.Line,
					LineRune: req.Syntax.End.LineRune,
					Byte:     req.Syntax.End.Byte,
				},
			})
			break
		}
	}

	modfileData, _ = modFile.Format()
	err = os.WriteFile("go.mod", modfileData, 0644)
	if err != nil {
		return fmt.Errorf("failed to write go.mod: %v", err)
	}

	return nil
}
