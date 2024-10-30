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

package types

// Config represents a configuration for the llcppg tool.
type Config struct {
	Name         string   `json:"name"`
	CFlags       string   `json:"cflags"`
	Libs         string   `json:"libs"`
	Include      []string `json:"include"`
	StdIncludes  []string `json:"stdIncludes"`
	Deps         []string `json:"deps"`
	TrimPrefixes []string `json:"trimPrefixes"`
	Cplusplus    bool     `json:"cplusplus"`
}

type SymbolInfo struct {
	Mangle string `json:"mangle"` // C++ Symbol
	CPP    string `json:"c++"`    // C++ function name
	Go     string `json:"go"`     // Go function name
}
