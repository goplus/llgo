/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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

package runtime

import (
	"math"
	"strconv"
	"strings"
)

func formatSpecialFloat(v float64) (string, bool) {
	switch {
	case math.IsNaN(v):
		return "NaN", true
	case math.IsInf(v, 1):
		return "+Inf", true
	case math.IsInf(v, -1):
		return "-Inf", true
	default:
		return "", false
	}
}

func padExponentWidth(s string, width int) string {
	idx := strings.LastIndexAny(s, "eE")
	if idx < 0 || idx+2 > len(s) {
		return s
	}
	sign := s[idx+1]
	if sign != '+' && sign != '-' {
		return s
	}
	digits := s[idx+2:]
	if len(digits) >= width {
		return s
	}
	return s[:idx+2] + strings.Repeat("0", width-len(digits)) + digits
}

func formatLegacyFloat(v float64) string {
	if s, ok := formatSpecialFloat(v); ok {
		return s
	}
	s := padExponentWidth(strconv.FormatFloat(v, 'e', 6, 64), 3)
	if s[0] != '-' {
		s = "+" + s
	}
	return s
}

func formatGo126Float(v float64) string {
	if s, ok := formatSpecialFloat(v); ok {
		return s
	}
	return strconv.FormatFloat(v, 'g', -1, 64)
}

func formatLegacyComplex(v complex128) string {
	return "(" + formatLegacyFloat(real(v)) + formatLegacyFloat(imag(v)) + "i)"
}

func formatGo126Complex(v complex128) string {
	re := formatGo126Float(real(v))
	im := formatGo126Float(imag(v))
	if im[0] != '-' {
		im = "+" + im
	}
	return "(" + re + im + "i)"
}
