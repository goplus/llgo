//go:build baremetal && !nogc

/*
 * Copyright (c) 2025 The XGo Authors (xgo.dev). All rights reserved.
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

import "unsafe"

// FreeDeferNode is a no-op in baremetal environment.
// Defer nodes become unreachable after being unlinked from the chain,
// and tinygogc will reclaim them in the next GC cycle.
func FreeDeferNode(ptr unsafe.Pointer) {
	// no-op: let tinygogc collect
}
