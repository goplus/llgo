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

package cpgithubpkg

import (
	"log"
	"os"
	"os/exec"
	"slices"
	"strings"

	"github.com/goccy/go-yaml"
	"golang.org/x/mod/semver"
)

type version struct {
	Folder string `yaml:"folder"`
}

type config struct {
	Versions map[string]version `yaml:"versions"`
}

type template struct {
	FromVer string `yaml:"from"`
	Folder  string `yaml:"folder"`
	Tag     string `yaml:"tag,omitempty"` // pattern with *, empty if dynamic tag
}

type configEx struct {
	PkgName  string             `yaml:"name"`
	Versions map[string]version `yaml:"versions"`
	Template template           `yaml:"template"`
}

// Main is the entry point for copying GitHub packages.
func Main(pkgName string) {
	localDir := conanRoot() + "recipes/" + pkgName + "/"

	confFile := localDir + "config.yml"
	b, err := os.ReadFile(confFile)
	check(err)

	var conf config
	err = yaml.Unmarshal(b, &conf)
	check(err)

	tryCp := func(src map[string]any, ver string, v version) {
		switch url := src["url"].(type) {
		case string:
			if pkgPath, tagPattern, ok := checkGithbPkg(url, ver); ok {
				cpGithubPkg(pkgName, pkgPath, tagPattern, localDir, conf, ver, v)
			}
		case []any:
			for _, u := range url {
				url := u.(string)
				if pkgPath, tagPattern, ok := checkGithbPkg(url, ver); ok {
					cpGithubPkg(pkgName, pkgPath, tagPattern, localDir, conf, ver, v)
				}
			}
		default:
			log.Println("[INFO] skip source:", src)
		}
	}

	conandatas := make(map[string]conandata) // folder -> conandata
	rangeVerDesc(conf.Versions, func(ver string, v version) {
		cd, err := getConanData(conandatas, v.Folder, localDir)
		if err != nil {
			if os.IsNotExist(err) {
				return
			}
			check(err)
		}

		if src, ok := cd.Sources[ver]; ok {
			switch src := src.(type) {
			case map[string]any:
				tryCp(src, ver, v)
			case []any:
				for _, u := range src {
					tryCp(u.(map[string]any), ver, v)
				}
			default:
				log.Panicln("[FATAL] source:", src)
			}
		}
	})
}

func cpGithubPkg(pkgName, pkgPath, tagPattern, srcDir string, conf config, fromVer string, v version) {
	destDir := cppkgRoot() + pkgPath
	os.MkdirAll(destDir, os.ModePerm)

	err := exec.Command("cp", "-r", srcDir, destDir).Run()
	check(err)

	confex := &configEx{
		PkgName:  pkgName,
		Versions: conf.Versions,
		Template: template{
			FromVer: fromVer,
			Folder:  v.Folder,
			Tag:     tagPattern,
		},
	}
	b, err := yaml.Marshal(confex)
	check(err)

	err = os.WriteFile(destDir+"/config.yml", b, os.ModePerm)
	check(err)

	log.Println("[INFO] copy", pkgPath)
	os.Exit(0)
}

func checkGithbPkg(url, ver string) (pkgPath, tagPattern string, ok bool) {
	const githubPrefix = "https://github.com/"
	if strings.HasPrefix(url, githubPrefix) {
		path := url[len(githubPrefix):]
		parts := strings.SplitN(path, "/", 3)
		if len(parts) == 3 { // user/repo/xxx
			if pos := strings.Index(parts[2], ver); pos >= 0 {
				userRepo := parts[0] + "/" + parts[1]
				at := len(githubPrefix) + len(userRepo) + 1 + pos
				tagPattern = tagPatternOf(url, ver, at)
				pkgPath, ok = strings.ToLower(userRepo), true
			}
		}
	}
	return
}

func tagPatternOf(url, ver string, at int) (tagPattern string) {
	var tag string
	if pos := strings.LastIndexByte(url[:at], '/'); pos >= 0 {
		last := at + len(ver)
		left := url[last:]
		if end, ok := checkTagEnd(left); ok {
			pos++
			tag = url[pos:last]
			tagPattern = url[pos:at] + end
		}
	}
	if tag == "" {
		log.Println("[INFO] dynamic tag found:", url)
	}
	return
}

func checkTagEnd(left string) (end string, ok bool) {
	if n := len(left); n > 0 {
		if left[0] == '/' {
			return "*", true
		}
		if n >= 4 && left[0] == '.' {
			ext := left[1:4]
			return "*", ext == "tar" || ext == "zip" || ext == "tgz"
		}
		if strings.HasPrefix(left, "-stable.") {
			return "*-stable", true
		}
	}
	return "", false
}

type conandata struct {
	Sources map[string]any `yaml:"sources"`
}

func getConanData(conandatas map[string]conandata, folder, localDir string) (ret conandata, err error) {
	if v, ok := conandatas[folder]; ok {
		return v, nil
	}
	file := localDir + folder + "/conandata.yml"
	b, err := os.ReadFile(file)
	if err != nil {
		return
	}
	if err = yaml.Unmarshal(b, &ret); err != nil {
		return
	}
	conandatas[folder] = ret
	return
}

func rangeVerDesc[V any](data map[string]V, f func(string, V)) {
	keys := make([]string, 0, len(data))
	for k := range data {
		keys = append(keys, "v"+k)
	}
	semver.Sort(keys)
	for _, k := range slices.Backward(keys) {
		k = k[1:] // remove 'v'
		f(k, data[k])
	}
}

func conanRoot() string {
	home, _ := os.UserHomeDir()
	return home + "/conan-center-index/"
}

func cppkgRoot() string {
	home, _ := os.UserHomeDir()
	return home + "/cppkg/"
}

func check(err error) {
	if err != nil {
		panic(err)
	}
}
