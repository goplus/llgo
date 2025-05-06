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
	"errors"
	"os"
	"strings"

	"github.com/goccy/go-yaml"
	"github.com/goplus/llgo/internal/github"
	"golang.org/x/mod/semver"
)

var gitCmd = NewTool("git", []string{
	"brew install git",
	"apt-get install git",
})

// Manager represents a package manager for C/C++ packages.
type Manager struct {
	cacheDir string
}

func New(cacheDir string) (ret *Manager, err error) {
	if cacheDir == "" {
		cacheDir, err = os.UserCacheDir()
		if err != nil {
			return
		}
		cacheDir += "/cppkg"
	}
	os.MkdirAll(cacheDir, os.ModePerm)
	ret = &Manager{
		cacheDir: cacheDir,
	}
	return
}

type version struct {
	Folder string `yaml:"folder"`
}

// Template represents a template for package versions.
type Template struct {
	FromVer string `yaml:"from"`
	Folder  string `yaml:"folder"`
	Tag     string `yaml:"tag,omitempty"` // pattern with *, empty if dynamic tag
}

type config struct {
	PkgName  string             `yaml:"name"`
	Versions map[string]version `yaml:"versions"`
	Template Template           `yaml:"template"`
}

// Package represents a C/C++ package.
type Package struct {
	Name     string
	Path     string
	Version  string
	Folder   string
	Template *Template

	gr *github.Release // optional
}

var (
	// ErrVersionNotFound is returned when the specified version is not found.
	ErrVersionNotFound = errors.New("version not found")

	// ErrDynamicTag is returned when the tag is dynamic.
	ErrDynamicTag = errors.New("dynamic tag")
)

const (
	// IndexAutoUpdate is a flag to automatically update the index.
	IndexAutoUpdate = 1 << iota

	// ToolQuietInstall is a flag to suppress output during installation.
	ToolQuietInstall

	// LogRevertProxy is a flag to log revert proxy.
	LogRevertProxy
)

// Lookup looks up a package by its path and version.
func (p *Manager) Lookup(pkgPath, ver string, flags int) (_ *Package, err error) {
	root := p.indexRoot()
	err = indexUpate(root, flags)
	if err != nil {
		return
	}
	pkgDir := root + "/" + pkgPath
	confFile := pkgDir + "/config.yml"
	b, err := os.ReadFile(confFile)
	if err != nil {
		return
	}
	var conf config
	err = yaml.Unmarshal(b, &conf)
	if err != nil {
		return
	}

	if ver == "" || ver == "latest" {
		if conf.Template.Tag == "" {
			return nil, ErrDynamicTag
		}
		gr, e := github.GetRelease(pkgPath, "")
		if e != nil {
			return nil, e
		}
		ver, err = verByTag(gr.TagName, conf.Template.Tag)
		if err != nil {
			return
		}
		templ := conf.Template
		return &Package{conf.PkgName, pkgPath, ver, templ.Folder, &templ, gr}, nil
	}

	if v, ok := conf.Versions[ver]; ok {
		return &Package{conf.PkgName, pkgPath, ver, v.Folder, nil, nil}, nil
	}
	if compareVer(ver, conf.Template.FromVer) < 0 {
		err = ErrVersionNotFound
		return
	}
	templ := conf.Template
	return &Package{conf.PkgName, pkgPath, ver, templ.Folder, &templ, nil}, nil
}

func (p *Manager) indexRoot() string {
	return p.cacheDir + "/index"
}

func indexUpate(root string, flags int) (err error) {
	if _, err = os.Stat(root + "/.git"); os.IsNotExist(err) {
		os.RemoveAll(root)
		return indexInit(root, flags)
	}
	if flags&IndexAutoUpdate != 0 {
		quietInstall := flags&ToolQuietInstall != 0
		git, e := gitCmd.New(quietInstall, "pull", "--ff-only", "origin", "main")
		if e != nil {
			return e
		}
		git.Dir = root
		git.Stdout = os.Stdout
		git.Stderr = os.Stderr
		err = git.Run()
	}
	return
}

func indexInit(root string, flags int) (err error) {
	quietInstall := flags&ToolQuietInstall != 0
	git, err := gitCmd.New(quietInstall, "clone", "https://github.com/goplus/cppkg.git", root)
	if err != nil {
		return
	}
	git.Stdout = os.Stdout
	git.Stderr = os.Stderr
	err = git.Run()
	return
}

func compareVer(v1, v2 string) int {
	return semver.Compare("v"+v1, "v"+v2)
}

func verByTag(tag, tagPattern string) (ver string, err error) {
	if pos := strings.IndexByte(tagPattern, '*'); pos >= 0 {
		prefix := tagPattern[:pos]
		suffix := tagPattern[pos+1:]
		if strings.HasPrefix(tag, prefix) && strings.HasSuffix(tag, suffix) {
			ver = tag[pos : len(tag)-len(suffix)]
			return
		}
	}
	return "", errors.New("tag not match: " + tag + " with " + tagPattern)
}
