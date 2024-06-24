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

package llama2

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoFiles   = "llama2/run.c"
	LLGoPackage = "link"
)

// -----------------------------------------------------------------------------

// llgo:type C
type TokenIndex struct {
	Str *c.Char
	Id  c.Int
}

// llgo:type C
type Tokenizer struct {
	Vocab          **c.Char
	VocabScores    *c.Float
	SortedVocab    *TokenIndex
	VocabSize      c.Int
	MaxTokenLength c.Uint
	BytePieces     [512]uint8 // stores all single-byte strings
}

//go:linkname BuildTokenizer C.build_tokenizer
func BuildTokenizer(t *Tokenizer, tokenizerPath *c.Char, vocabSize c.Int)

//go:linkname FreeTokenizer C.free_tokenizer
func FreeTokenizer(t *Tokenizer)

// -----------------------------------------------------------------------------

// llgo:type C
type Config struct {
	Dim       c.Int // transformer dimension
	HiddenDim c.Int // for ffn layers
	NLayers   c.Int // number of layers
	NHeads    c.Int // number of query heads
	NKVHeads  c.Int // number of key/value heads (can be < query heads because of multiquery)
	VocabSize c.Int // vocabulary size, usually 256 (byte-level)
	SeqLen    c.Int // max sequence length
}

// llgo:type C
type TransformerWeights struct {
	// token embedding table
	TokenEmbeddingTable *c.Float // (vocab_size, dim)
	// weights for rmsnorms
	RmsAttWeight *c.Float // (layer, dim) rmsnorm weights
	RmsFfnWeight *c.Float // (layer, dim)
	// weights for matmuls. note dim == n_heads * head_size
	Wq *c.Float // (layer, dim, n_heads * head_size)
	Wk *c.Float // (layer, dim, n_kv_heads * head_size)
	Wv *c.Float // (layer, dim, n_kv_heads * head_size)
	Wo *c.Float // (layer, n_heads * head_size, dim)
	// weights for ffn
	W1 *c.Float // (layer, hidden_dim, dim)
	W2 *c.Float // (layer, dim, hidden_dim)
	W3 *c.Float // (layer, hidden_dim, dim)
	// final rmsnorm
	RmsFinalWeight *c.Float // (dim,)
	// (optional) classifier weights for the logits, on the last layer
	Wcls *c.Float
}

// llgo:type C
type RunState struct {
	// current wave of activations
	X      *c.Float // activation at current time stamp (dim,)
	Xb     *c.Float // same, but inside a residual branch (dim,)
	Xb2    *c.Float // an additional buffer just for convenience (dim,)
	Hb     *c.Float // buffer for hidden dimension in the ffn (hidden_dim,)
	Hb2    *c.Float // buffer for hidden dimension in the ffn (hidden_dim,)
	Q      *c.Float // query (dim,)
	K      *c.Float // key (dim,)
	V      *c.Float // value (dim,)
	Att    *c.Float // buffer for scores/attention values (n_heads, seq_len)
	Logits *c.Float // output logits
	// kv cache
	KeyCache   *c.Float // (layer, seq_len, dim)
	ValueCache *c.Float // (layer, seq_len, dim)
}

// llgo:type C
type Transformer struct {
	Config  Config             // the hyperparameters of the architecture (the blueprint)
	Weights TransformerWeights // the weights of the model
	State   RunState           // buffers for the "wave" of activations in the forward pass

	// some more state needed to properly clean up the memory mapping (sigh)
	Fd       c.Int    // file descriptor for memory mapping
	Data     *c.Float // memory mapped data pointer
	FileSize uintptr  // size of the checkpoint file in bytes
}

//go:linkname BuildTransformer C.build_transformer
func BuildTransformer(t *Transformer, checkpointPath *c.Char)

//go:linkname FreeTransformer C.free_transformer
func FreeTransformer(t *Transformer)

// -----------------------------------------------------------------------------

// llgo:type C
type ProbIndex struct {
	Prob  c.Float
	Index c.Int
} // struct used when sorting probabilities during top-p sampling

// llgo:type C
type Sampler struct {
	VocabSize   c.Int
	Probindex   *ProbIndex // buffer used in top-p sampling
	Temperature c.Float
	Topp        c.Float
	RngState    uint64
}

//go:linkname BuildSampler C.build_sampler
func BuildSampler(sampler *Sampler, vocabSize c.Int, temperature c.Float, topp c.Float, rngSeed uint64)

//go:linkname FreeSampler C.free_sampler
func FreeSampler(sampler *Sampler)

// -----------------------------------------------------------------------------

//go:linkname Generate C.generate
func Generate(
	transformer *Transformer, tokenizer *Tokenizer, sampler *Sampler,
	prompt *c.Char, steps c.Int)

//go:linkname Chat C.chat
func Chat(
	transformer *Transformer, tokenizer *Tokenizer, sampler *Sampler,
	cliUserPrompt *c.Char, cliSystemPrompt *c.Char, steps c.Int)

// -----------------------------------------------------------------------------
