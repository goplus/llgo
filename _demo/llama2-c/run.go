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

package main

import (
	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/x/llama2"
)

func main() {
	var prompt *c.Char = c.Str("Once upon a time")
	var checkpointPath *c.Char = c.Str("stories15M.bin")
	var tokenizerPath *c.Char = c.Str("tokenizer.bin")
	var temperature, topp c.Float = 1.0, 0.9
	var steps c.Int = 256
	var rngSeed uint64 = uint64(c.Time(nil))

	// build the Transformer via the model .bin file
	var transformer llama2.Transformer
	llama2.BuildTransformer(&transformer, checkpointPath)

	// build the Tokenizer via the tokenizer .bin file
	var tokenizer llama2.Tokenizer
	llama2.BuildTokenizer(&tokenizer, tokenizerPath, transformer.Config.VocabSize)

	// build the Sampler
	var sampler llama2.Sampler
	llama2.BuildSampler(&sampler, transformer.Config.VocabSize, temperature, topp, rngSeed)

	// run!
	llama2.Generate(&transformer, &tokenizer, &sampler, prompt, steps)

	// memory and file handles cleanup
	llama2.FreeSampler(&sampler)
	llama2.FreeTokenizer(&tokenizer)
	llama2.FreeTransformer(&transformer)
}
