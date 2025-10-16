// Copyright 2024 The GoPlus Authors (goplus.org). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package platform provides platform-specific utilities.
package platform

// llgo:skipall
type _platform struct{}

// An OSArch is a pair of GOOS and GOARCH values indicating a platform.
type OSArch struct {
	GOOS, GOARCH string
}

func (p OSArch) String() string {
	return p.GOOS + "/" + p.GOARCH
}

// osArchInfo describes information about an OSArch.
type osArchInfo struct {
	CgoSupported bool
	FirstClass   bool
	Broken       bool
}

// distInfo maps OSArch to information about cgo support.
// This is a simplified version covering the most common platforms.
var distInfo = map[OSArch]osArchInfo{
	{"darwin", "amd64"}:   {CgoSupported: true, FirstClass: true},
	{"darwin", "arm64"}:   {CgoSupported: true, FirstClass: true},
	{"linux", "386"}:      {CgoSupported: true, FirstClass: true},
	{"linux", "amd64"}:    {CgoSupported: true, FirstClass: true},
	{"linux", "arm"}:      {CgoSupported: true, FirstClass: true},
	{"linux", "arm64"}:    {CgoSupported: true, FirstClass: true},
	{"linux", "ppc64le"}:  {CgoSupported: true},
	{"linux", "riscv64"}:  {CgoSupported: true},
	{"linux", "s390x"}:    {CgoSupported: true},
	{"windows", "386"}:    {CgoSupported: true, FirstClass: true},
	{"windows", "amd64"}:  {CgoSupported: true, FirstClass: true},
	{"windows", "arm64"}:  {CgoSupported: true},
	{"freebsd", "386"}:    {CgoSupported: true},
	{"freebsd", "amd64"}:  {CgoSupported: true},
	{"freebsd", "arm"}:    {CgoSupported: true},
	{"freebsd", "arm64"}:  {CgoSupported: true},
	{"openbsd", "386"}:    {CgoSupported: true},
	{"openbsd", "amd64"}:  {CgoSupported: true},
	{"openbsd", "arm"}:    {CgoSupported: true},
	{"openbsd", "arm64"}:  {CgoSupported: true},
	{"netbsd", "386"}:     {CgoSupported: true},
	{"netbsd", "amd64"}:   {CgoSupported: true},
	{"netbsd", "arm"}:     {CgoSupported: true},
	{"netbsd", "arm64"}:   {CgoSupported: true},
	{"android", "386"}:    {CgoSupported: true},
	{"android", "amd64"}:  {CgoSupported: true},
	{"android", "arm"}:    {CgoSupported: true},
	{"android", "arm64"}:  {CgoSupported: true},
	{"illumos", "amd64"}:  {CgoSupported: true},
	{"solaris", "amd64"}:  {CgoSupported: true},
}

// CgoSupported reports whether goos/goarch supports cgo.
func CgoSupported(goos, goarch string) bool {
	return distInfo[OSArch{goos, goarch}].CgoSupported
}
