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

package pysig

import (
	"strings"
)

type Arg struct {
	Name   string
	Type   string
	DefVal string
}

// Parse parses a Python function signature.
func Parse(sig string) (args []*Arg) {
	sig = strings.TrimPrefix(sig, "(")
	for {
		pos := strings.IndexAny(sig, ",:=)")
		if pos <= 0 {
			return
		}
		arg := &Arg{Name: strings.TrimSpace(sig[:pos])}
		args = append(args, arg)
		c := sig[pos]
		sig = sig[pos+1:]
		switch c {
		case ',':
			continue
		case ':':
			arg.Type, sig = parseType(sig)
			if strings.HasPrefix(sig, "=") {
				arg.DefVal, sig = parseDefVal(sig[1:])
			}
		case '=':
			arg.DefVal, sig = parseDefVal(sig)
		case ')':
			return
		}
		sig = strings.TrimPrefix(sig, ",")
	}
}

const (
	allSpecials = "([<'\""
)

var pairStops = map[byte]string{
	'(':  ")" + allSpecials,
	'[':  "]" + allSpecials,
	'<':  ">" + allSpecials,
	'\'': "'" + allSpecials,
	'"':  "\"",
}

func parseText(sig string, stops string) (left string) {
	for {
		pos := strings.IndexAny(sig, stops)
		if pos < 0 {
			return sig
		}
		if c := sig[pos]; c != stops[0] {
			if pstop, ok := pairStops[c]; ok {
				sig = strings.TrimPrefix(parseText(sig[pos+1:], pstop), pstop[:1])
				continue
			}
		}
		return sig[pos:]
	}
}

// stops: "=,)"
func parseType(sig string) (string, string) {
	left := parseText(sig, "=,)"+allSpecials)
	return resultOf(sig, left), left
}

// stops: ",)"
func parseDefVal(sig string) (string, string) {
	left := parseText(sig, ",)"+allSpecials)
	return resultOf(sig, left), left
}

func resultOf(sig, left string) string {
	return strings.TrimSpace(sig[:len(sig)-len(left)])
}
