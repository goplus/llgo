//go:build !llgo

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

package llgen

import "testing"

func TestNormalizeIR(t *testing.T) {
	tests := []struct {
		name     string
		input    string
		expected string
	}{
		{
			name:     "normalize r12 register",
			input:    `call void asm sideeffect "", "{r12}"(ptr %0)`,
			expected: `call void asm sideeffect "", "{CTX_REG}"(ptr %0)`,
		},
		{
			name:     "normalize x26 register",
			input:    `%0 = call ptr asm sideeffect "", "={x26}"()`,
			expected: `%0 = call ptr asm sideeffect "", "={CTX_REG}"()`,
		},
		{
			name:     "normalize esi register",
			input:    `call void asm sideeffect "", "{esi}"(ptr %0)`,
			expected: `call void asm sideeffect "", "{CTX_REG}"(ptr %0)`,
		},
		{
			name:     "normalize x27 register",
			input:    `%0 = call ptr asm sideeffect "", "={x27}"()`,
			expected: `%0 = call ptr asm sideeffect "", "={CTX_REG}"()`,
		},
		{
			name:     "strip target-features",
			input:    `define void @foo() "target-features"="+neon,+reserve-x26" {`,
			expected: `define void @foo() {`,
		},
		{
			name:     "combined normalization",
			input:    `define void @foo() "target-features"="+neon" { call void asm sideeffect "", "{r12}"(ptr null) }`,
			expected: `define void @foo() { call void asm sideeffect "", "{CTX_REG}"(ptr null) }`,
		},
		{
			name:     "no change for unrelated registers",
			input:    `call void asm sideeffect "", "{rax}"(i64 %0)`,
			expected: `call void asm sideeffect "", "{rax}"(i64 %0)`,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := NormalizeIR(tt.input)
			if got != tt.expected {
				t.Errorf("NormalizeIR() =\n%s\nwant:\n%s", got, tt.expected)
			}
		})
	}
}
