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

package runtime

type errorString string

func (e errorString) RuntimeError() {}

func (e errorString) Error() string {
	return "runtime error: " + string(e)
}

func AssertRuntimeError(b bool, msg string) {
	if b {
		panic(errorString(msg).Error())
	}
}

func AssertNegativeShift(b bool) {
	if b {
		panic(errorString("negative shift amount").Error())
	}
}

func AssertIndexRange(b bool) {
	if b {
		panic(errorString("index out of range").Error())
	}
}
