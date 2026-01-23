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

// Package sig holds “code signatures” that can be called and will result in
// certain code sequences being linked into the final binary. The functions
// themselves are no-ops.
package sig

// BoringCrypto indicates that the BoringCrypto module is present.
func BoringCrypto() {}

// FIPSOnly indicates that package crypto/tls/fipsonly is present.
func FIPSOnly() {}

// StandardCrypto indicates that standard Go crypto is present.
func StandardCrypto() {}
