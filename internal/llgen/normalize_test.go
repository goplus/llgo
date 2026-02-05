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
			name:     "normalize amd64 WriteCtxReg",
			input:    `call void asm "movq $0, %mm0", "r,~{mm0}"(ptr %0)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize 386 WriteCtxReg",
			input:    `call void asm "movd $0, %mm0", "r,~{mm0}"(ptr %ctx)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize arm64 WriteCtxReg",
			input:    `call void asm "mov x26, $0", "r,~{x26}"(ptr %data)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize arm64 WriteCtxReg without memory",
			input:    `call void asm "mov x26, $0", "r,~{x26}"(ptr %data)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize arm64 WriteCtxReg minimal constraints",
			input:    `call void asm "mov x26, $0", "r"(ptr %data)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize riscv64 WriteCtxReg",
			input:    `call void asm "mv x27, $0", "r,~{x27}"(ptr %val)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize riscv64 WriteCtxReg without memory",
			input:    `call void asm "mv x27, $0", "r,~{x27}"(ptr %val)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize riscv64 WriteCtxReg minimal constraints",
			input:    `call void asm "mv x27, $0", "r"(ptr %val)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize amd64 ReadCtxReg",
			input:    `%1 = call ptr asm "movq %mm0, $0", "=r"()`,
			expected: `%1 = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize 386 ReadCtxReg",
			input:    `%ctx = call ptr asm "movd %mm0, $0", "=r"()`,
			expected: `%ctx = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize arm64 ReadCtxReg",
			input:    `%result = call ptr asm "mov $0, x26", "=r"()`,
			expected: `%result = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize arm64 ReadCtxReg without memory",
			input:    `%result = call ptr asm "mov $0, x26", "=r"()`,
			expected: `%result = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize riscv64 ReadCtxReg",
			input:    `%val = call ptr asm "mv $0, x27", "=r"()`,
			expected: `%val = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize riscv64 ReadCtxReg without memory",
			input:    `%val = call ptr asm "mv $0, x27", "=r"()`,
			expected: `%val = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize read_register intrinsic i64",
			input:    `%1 = call i64 @llvm.read_register.i64(metadata !0)`,
			expected: `%1 = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize read_volatile_register intrinsic i32",
			input:    `%ctx = call i32 @llvm.read_volatile_register.i32(metadata !7)`,
			expected: `%ctx = call ptr asm "read_ctx_reg $0", "=r"()`,
		},
		{
			name:     "normalize write_register intrinsic",
			input:    `call void @llvm.write_register.i64(metadata !0, i64 %v)`,
			expected: `call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize register metadata node",
			input:    `!0 = !{!"x26"}`,
			expected: ``,
		},
		{
			name:     "strip target-features",
			input:    `define void @foo() "target-features"="+neon,+reserve-x26" {`,
			expected: `define void @foo() {`,
		},
		{
			name: "combined normalization",
			input: `define void @foo() "target-features"="+neon" {
  call void asm "mov x26, $0", "r,~{x26}"(ptr %0)
  %1 = call ptr asm "mov $0, x26", "=r"()
}`,
			expected: `define void @foo() {
  call void asm "write_ctx_reg $0", "r,~{CTX_REG}"(ptr %__llgo_ctx)
  %1 = call ptr asm "read_ctx_reg $0", "=r"()
}`,
		},
		{
			name:     "no change for unrelated asm",
			input:    `call void asm "nop", ""()`,
			expected: `call void asm "nop", ""()`,
		},
		{
			name:     "no change for other register constraints",
			input:    `call void asm "", "{rax}"(i64 %0)`,
			expected: `call void asm "", "{rax}"(i64 %0)`,
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
