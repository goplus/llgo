/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package bug

import (
	"bytes"
	"errors"
	"net/url"
	"strings"
	"testing"
)

func TestBugReportPayloadAndRedaction(t *testing.T) {
	t.Setenv("GOPATH", "/private/user/path")
	t.Setenv("GOFLAGS", "-ldflags=secret")
	var stdout, stderr bytes.Buffer
	opened := ""
	open := func(link string) error { opened = link; return nil }
	if err := run(nil, &stdout, &stderr, open); err != nil {
		t.Fatal(err)
	}
	link, err := url.Parse(opened)
	if err != nil {
		t.Fatal(err)
	}
	body := link.Query().Get("body")
	if link.Host != "github.com" || link.Path != "/xgo-dev/llgo/issues/new" {
		t.Fatalf("wrong tracker: %s", opened)
	}
	for _, value := range []string{"llgo ", "LLVM ", "built with go", "What did you do?"} {
		if !strings.Contains(body, value) {
			t.Errorf("report missing %q", value)
		}
	}
	for _, value := range []string{"/private", "secret", "GOPATH", "GOFLAGS"} {
		if strings.Contains(body, value) {
			t.Errorf("private data in report: %s", body)
		}
	}
	stdout.Reset()
	opened = ""
	if err := run([]string{"-n"}, &stdout, &stderr, open); err != nil || opened != "" || stdout.String() != body {
		t.Fatalf("print report: %v %q", err, stdout.String())
	}
	stdout.Reset()
	if err := run(nil, &stdout, &stderr, func(string) error { return errors.New("no browser") }); err == nil || stdout.String() != body {
		t.Fatal("missing fallback report or exit error")
	}
	for _, args := range [][]string{{"-unknown"}, {"extra"}} {
		if err := run(args, &stdout, &stderr, open); err == nil {
			t.Fatalf("accepted invalid arguments %v", args)
		}
	}
	if err := run([]string{"-h"}, &stdout, &stderr, open); err != nil {
		t.Fatal(err)
	}
}
