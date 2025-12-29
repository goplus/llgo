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

package env

import (
	"strings"
	"testing"
)

func TestCompilerHash(t *testing.T) {
	// Test with fake hash injected
	restore := SetCompilerHashForTest("test-hash-12345")
	defer restore()

	hash, err := CompilerHash()
	if err != nil {
		t.Fatalf("CompilerHash() with test hash failed: %v", err)
	}
	if hash != "test-hash-12345" {
		t.Errorf("CompilerHash() = %q, want %q", hash, "test-hash-12345")
	}

	// Test restore
	restore()
	// Without all.bash, compilerHash should be empty for devel builds
	if Version() == devel {
		_, err = CompilerHash()
		if err == nil {
			t.Error("CompilerHash() should return error when hash not set for devel build")
		}
		if !strings.Contains(err.Error(), "all.bash") {
			t.Errorf("Error message should mention all.bash, got: %v", err)
		}
	}
}

func TestSetCompilerHashForTest(t *testing.T) {
	restore1 := SetCompilerHashForTest("hash1")
	hash1, _ := CompilerHash()
	if hash1 != "hash1" {
		t.Errorf("First hash = %q, want %q", hash1, "hash1")
	}

	restore2 := SetCompilerHashForTest("hash2")
	hash2, _ := CompilerHash()
	if hash2 != "hash2" {
		t.Errorf("Second hash = %q, want %q", hash2, "hash2")
	}

	restore2()
	hashAfterRestore2, _ := CompilerHash()
	if hashAfterRestore2 != "hash1" {
		t.Errorf("After restore2, hash = %q, want %q", hashAfterRestore2, "hash1")
	}

	restore1()
	// Hash should be empty now
	if Version() == devel {
		_, err := CompilerHash()
		if err == nil {
			t.Error("After all restores, CompilerHash() should return error for devel build")
		}
	}
}
