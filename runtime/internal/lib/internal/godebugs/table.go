// Copyright 2023 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package godebugs

type Info struct {
	Name      string
	Package   string
	Changed   int
	Old       string
	Opaque    bool
	Immutable bool
}

var All = []Info{
	{Name: "allowmultiplevcs", Package: "cmd/go"},
	{Name: "asynctimerchan", Package: "time", Changed: 23, Old: "1"},
	{Name: "containermaxprocs", Package: "runtime", Changed: 25, Old: "0"},
	{Name: "cryptocustomrand", Package: "crypto", Changed: 26, Old: "1"},
	{Name: "dataindependenttiming", Package: "crypto/subtle", Opaque: true},
	{Name: "decoratemappings", Package: "runtime", Opaque: true, Changed: 25, Old: "0"},
	{Name: "embedfollowsymlinks", Package: "cmd/go"},
	{Name: "execerrdot", Package: "os/exec"},
	{Name: "fips140", Package: "crypto/fips140", Opaque: true, Immutable: true},
	{Name: "gocachehash", Package: "cmd/go"},
	{Name: "gocachetest", Package: "cmd/go"},
	{Name: "gocacheverify", Package: "cmd/go"},
	{Name: "gotestjsonbuildtext", Package: "cmd/go", Changed: 24, Old: "1"},
	{Name: "gotypesalias", Package: "go/types", Changed: 23, Old: "0"},
	{Name: "http2client", Package: "net/http"},
	{Name: "http2debug", Package: "net/http", Opaque: true},
	{Name: "http2server", Package: "net/http"},
	{Name: "httpcookiemaxnum", Package: "net/http", Changed: 24, Old: "0"},
	{Name: "httplaxcontentlength", Package: "net/http", Changed: 22, Old: "1"},
	{Name: "httpmuxgo121", Package: "net/http", Changed: 22, Old: "1"},
	{Name: "httpservecontentkeepheaders", Package: "net/http", Changed: 23, Old: "1"},
	{Name: "installgoroot", Package: "go/build"},
	{Name: "jstmpllitinterp", Package: "html/template", Opaque: true},
	{Name: "multipartmaxheaders", Package: "mime/multipart"},
	{Name: "multipartmaxparts", Package: "mime/multipart"},
	{Name: "multipathtcp", Package: "net", Changed: 24, Old: "0"},
	{Name: "netdns", Package: "net", Opaque: true},
	{Name: "netedns0", Package: "net", Changed: 19, Old: "0"},
	{Name: "panicnil", Package: "runtime", Changed: 21, Old: "1"},
	{Name: "randautoseed", Package: "math/rand"},
	{Name: "randseednop", Package: "math/rand", Changed: 24, Old: "0"},
	{Name: "rsa1024min", Package: "crypto/rsa", Changed: 24, Old: "0"},
	{Name: "tarinsecurepath", Package: "archive/tar"},
	{Name: "tls10server", Package: "crypto/tls", Changed: 22, Old: "1"},
	{Name: "tls3des", Package: "crypto/tls", Changed: 23, Old: "1"},
	{Name: "tlsmaxrsasize", Package: "crypto/tls"},
	{Name: "tlsmlkem", Package: "crypto/tls", Changed: 24, Old: "0", Opaque: true},
	{Name: "tlsrsakex", Package: "crypto/tls", Changed: 22, Old: "1"},
	{Name: "tlssecpmlkem", Package: "crypto/tls", Changed: 26, Old: "0", Opaque: true},
	{Name: "tlssha1", Package: "crypto/tls", Changed: 25, Old: "1"},
	{Name: "tlsunsafeekm", Package: "crypto/tls", Changed: 22, Old: "1"},
	{Name: "updatemaxprocs", Package: "runtime", Changed: 25, Old: "0"},
	{Name: "urlmaxqueryparams", Package: "net/url", Changed: 24, Old: "0"},
	{Name: "urlstrictcolons", Package: "net/url", Changed: 26, Old: "0"},
	{Name: "winreadlinkvolume", Package: "os", Changed: 23, Old: "0"},
	{Name: "winsymlink", Package: "os", Changed: 23, Old: "0"},
	{Name: "x509keypairleaf", Package: "crypto/tls", Changed: 23, Old: "0"},
	{Name: "x509negativeserial", Package: "crypto/x509", Changed: 23, Old: "1"},
	{Name: "x509rsacrt", Package: "crypto/x509", Changed: 24, Old: "0"},
	{Name: "x509sha256skid", Package: "crypto/x509", Changed: 25, Old: "0"},
	{Name: "x509usefallbackroots", Package: "crypto/x509"},
	{Name: "x509usepolicies", Package: "crypto/x509", Changed: 24, Old: "0"},
	{Name: "zipinsecurepath", Package: "archive/zip"},
}

type RemovedInfo struct {
	Name    string
	Removed int
}

var Removed = []RemovedInfo{
	{Name: "x509sha1", Removed: 24},
}

func Lookup(name string) *Info {
	lo := 0
	hi := len(All)
	for lo < hi {
		m := int(uint(lo+hi) >> 1)
		mid := All[m].Name
		if name == mid {
			return &All[m]
		}
		if name < mid {
			hi = m
		} else {
			lo = m + 1
		}
	}
	return nil
}
