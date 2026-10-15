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

package gotest

import "testing"

var registerPressureEntry = checkRegisterPressure

func checkRegisterPressure(a, b, mode, d string, writer any, selected []string) int {
	if a != "directory" || b != "profile" || mode != "atomic" || d != "packages" || writer != "writer" || len(selected) != 1 || selected[0] != "selected" {
		return 0
	}
	return 42
}

func TestFuncValueAggregateRegisterPressure(t *testing.T) {
	if got := registerPressureEntry("directory", "profile", "atomic", "packages", "writer", []string{"selected"}); got != 42 {
		t.Fatalf("function value without an environment: got %d, want 42", got)
	}
	captured := 42
	entry := func(a, b, mode, d string, writer any, selected []string) int {
		if checkRegisterPressure(a, b, mode, d, writer, selected) == 42 {
			return captured
		}
		return 0
	}
	if got := entry("directory", "profile", "atomic", "packages", "writer", []string{"selected"}); got != 42 {
		t.Fatalf("function value with an environment: got %d, want 42", got)
	}
}
