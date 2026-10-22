/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

package flags

import (
	"flag"
	"testing"

	"github.com/xgo-dev/llgo/internal/build"
)

func TestWasmFinalFlags(t *testing.T) {
	for _, args := range [][]string{{}, {"-wasm-opt=size", "-wasm-strip=debug"}, {"-wasm-opt=off", "-wasm-strip=all"}, {"-wasm-strip=none"}} {
		fs := flag.NewFlagSet("wasm", flag.ContinueOnError)
		AddBuildFlags(fs)
		if err := fs.Parse(args); err != nil {
			t.Fatal(err)
		}
		conf := &build.Config{}
		if err := UpdateConfig(conf); err != nil {
			t.Fatal(err)
		}
		if string(conf.WasmOpt) != WasmOpt || string(conf.WasmStrip) != WasmStrip {
			t.Fatalf("config=%+v", conf)
		}
	}
	for _, arg := range []string{"-wasm-opt=", "-wasm-opt=fast", "-wasm-strip=symbols"} {
		fs := flag.NewFlagSet("bad", flag.ContinueOnError)
		AddBuildFlags(fs)
		if err := fs.Parse([]string{arg}); err == nil {
			t.Fatalf("accepted %s", arg)
		}
	}
}
