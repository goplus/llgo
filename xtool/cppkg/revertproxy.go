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
	"bytes"
	"encoding/json"
	"io"
	stdlog "log"
	"net/http"
	"net/http/httptest"
	"net/http/httputil"
	"net/url"
	"os"
	"os/exec"
	"strings"
)

type rtHandler func(req *http.Request) (resp *http.Response, err error)

func (p rtHandler) RoundTrip(req *http.Request) (*http.Response, error) {
	return p(req)
}

type teeReader struct {
	rc   io.ReadCloser
	b    bytes.Buffer
	req  *http.Request
	resp *http.Response
	log  *stdlog.Logger
}

func (p *teeReader) Read(b []byte) (n int, err error) {
	n, err = p.rc.Read(b)
	p.b.Write(b[:n])
	return
}

func (p *teeReader) Close() error {
	err := p.rc.Close()
	if log := p.log; log != nil {
		resp := *p.resp
		resp.Body = io.NopCloser(&p.b)
		var b bytes.Buffer
		p.req.Write(&b)
		resp.Write(&b)
		log.Print(b.String())
	}
	return err
}

type response = httptest.ResponseRecorder

func newResponse() *response {
	return httptest.NewRecorder()
}

type revertProxy = httptest.Server
type rpFunc = func(mux *http.ServeMux)

const (
	passThrough = http.StatusNotFound
)

func replyError(w http.ResponseWriter, _ error) {
	w.WriteHeader(passThrough)
}

func startRevertProxy(endpoint string, f rpFunc, log *stdlog.Logger) (_ *revertProxy, err error) {
	rpURL, err := url.Parse(endpoint)
	if err != nil {
		return
	}
	var mux *http.ServeMux
	if f != nil {
		mux = http.NewServeMux()
		f(mux)
	}
	proxy := httptest.NewServer(&httputil.ReverseProxy{
		Rewrite: func(r *httputil.ProxyRequest) {
			r.SetURL(rpURL)
		},
		Transport: rtHandler(func(req *http.Request) (resp *http.Response, err error) {
			if mux != nil {
				w := newResponse()
				mux.ServeHTTP(w, req)
				if w.Code != passThrough {
					resp = w.Result()
				}
			}
			if resp == nil {
				resp, err = http.DefaultTransport.RoundTrip(req)
			}
			if err == nil && resp.Body != nil {
				resp.Body = &teeReader{
					rc:   resp.Body,
					req:  req,
					resp: resp,
					log:  log,
				}
			}
			return
		}),
	})
	return proxy, nil
}

const (
	conanCenter   = "conancenter"
	conanEndpoint = "https://center2.conan.io"
)

type remoteList []struct {
	Name string `json:"name"`
	URL  string `json:"url"`
}

func remoteProxy(flags int, logFile string, f func() error, rpf rpFunc) (err error) {
	quietInstall := flags&ToolQuietInstall != 0
	app, err := conanCmd.Get(quietInstall)
	if err != nil {
		return
	}

	endpoint := conanEndpoint
	cmd := exec.Command(app, "remote", "list", "-f", "json")
	if b, err := cmd.Output(); err == nil {
		var rl remoteList
		if json.Unmarshal(b, &rl) == nil {
			for _, r := range rl {
				if r.Name == conanCenter && strings.HasPrefix(r.URL, "https://") {
					endpoint = r.URL
					break
				}
			}
		}
	}
	defer func() {
		exec.Command(app, "remote", "add", "--force", conanCenter, endpoint).Run()
	}()

	var log *stdlog.Logger
	if logFile != "" {
		f, err := os.Create(logFile)
		if err == nil {
			defer f.Close()
			log = stdlog.New(f, "", stdlog.LstdFlags)
		}
	}
	rp, err := startRevertProxy(conanEndpoint, rpf, log)
	if err != nil {
		return
	}
	defer rp.Close()

	err = exec.Command(app, "remote", "add", "--force", conanCenter, rp.URL).Run()
	if err != nil {
		return
	}

	return f()
}
