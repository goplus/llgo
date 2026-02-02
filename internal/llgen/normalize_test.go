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
		// WriteCtxReg patterns (precise matching)
		{
			name:     "normalize amd64 WriteCtxReg",
			input:    `call void asm sideeffect "movq $0, %mm0", "r,~{mm0},~{memory}"(ptr %0)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize 386 WriteCtxReg",
			input:    `call void asm sideeffect "movd $0, %mm0", "r,~{mm0},~{memory}"(ptr %ctx)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize arm64 WriteCtxReg",
			input:    `call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %data)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize arm64 WriteCtxReg without memory",
			input:    `call void asm sideeffect "mov x26, $0", "r,~{x26}"(ptr %data)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize arm64 WriteCtxReg minimal constraints",
			input:    `call void asm sideeffect "mov x26, $0", "r"(ptr %data)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize riscv64 WriteCtxReg",
			input:    `call void asm sideeffect "mv x27, $0", "r,~{x27},~{memory}"(ptr %val)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize riscv64 WriteCtxReg without memory",
			input:    `call void asm sideeffect "mv x27, $0", "r,~{x27}"(ptr %val)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize riscv64 WriteCtxReg minimal constraints",
			input:    `call void asm sideeffect "mv x27, $0", "r"(ptr %val)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		// ReadCtxReg patterns (precise matching)
		{
			name:     "normalize amd64 ReadCtxReg",
			input:    `%1 = call ptr asm sideeffect "movq %mm0, $0", "=r,~{memory}"()`,
			expected: `%1 = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		{
			name:     "normalize 386 ReadCtxReg",
			input:    `%ctx = call ptr asm sideeffect "movd %mm0, $0", "=r,~{memory}"()`,
			expected: `%ctx = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		{
			name:     "normalize arm64 ReadCtxReg",
			input:    `%result = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()`,
			expected: `%result = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		{
			name:     "normalize arm64 ReadCtxReg without memory",
			input:    `%result = call ptr asm sideeffect "mov $0, x26", "=r"()`,
			expected: `%result = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		{
			name:     "normalize riscv64 ReadCtxReg",
			input:    `%val = call ptr asm sideeffect "mv $0, x27", "=r,~{memory}"()`,
			expected: `%val = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		{
			name:     "normalize riscv64 ReadCtxReg without memory",
			input:    `%val = call ptr asm sideeffect "mv $0, x27", "=r"()`,
			expected: `%val = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		// Read/Write register intrinsics
		{
			name:     "normalize read_register intrinsic i64",
			input:    `%1 = call i64 @llvm.read_register.i64(metadata !0)`,
			expected: `%1 = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		{
			name:     "normalize read_volatile_register intrinsic i32",
			input:    `%ctx = call i32 @llvm.read_volatile_register.i32(metadata !7)`,
			expected: `%ctx = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()`,
		},
		{
			name:     "normalize write_register intrinsic",
			input:    `call void @llvm.write_register.i64(metadata !0, i64 %v)`,
			expected: `call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)`,
		},
		{
			name:     "normalize register metadata node",
			input:    `!0 = !{!"x26"}`,
			expected: ``,
		},
		// target-features stripping
		{
			name:     "strip target-features",
			input:    `define void @foo() "target-features"="+neon,+reserve-x26" {`,
			expected: `define void @foo() {`,
		},
		// Combined normalization
		{
			name: "combined normalization",
			input: `define void @foo() "target-features"="+neon" {
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %0)
  %1 = call ptr asm sideeffect "mov $0, x26", "=r,~{memory}"()
}`,
			expected: `define void @foo() {
  call void asm sideeffect "write_ctx_reg $0", "r,~{CTX_REG},~{memory}"(ptr %__llgo_ctx)
  %1 = call ptr asm sideeffect "read_ctx_reg $0", "=r,~{memory}"()
}`,
		},
		// No change for unrelated inline asm
		{
			name:     "no change for unrelated asm",
			input:    `call void asm sideeffect "nop", ""()`,
			expected: `call void asm sideeffect "nop", ""()`,
		},
		{
			name:     "no change for other register constraints",
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
