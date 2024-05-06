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
	LLGoPackage = "link"
)

type (
	Char  = int8
	Int   = c.Int
	Uint  = c.Uint
	Float = float32
)

//go:linkname Time C.time
func Time(*int32) int32

// -----------------------------------------------------------------------------

/*

typedef struct {
    char *str;
    int id;
} TokenIndex;

typedef struct {
    char** vocab;
    float* vocab_scores;
    TokenIndex *sorted_vocab;
    int vocab_size;
    unsigned int max_token_length;
    unsigned char byte_pieces[512]; // stores all single-byte strings
} Tokenizer;

void build_tokenizer(Tokenizer* t, char* tokenizer_path, int vocab_size);
void free_tokenizer(Tokenizer* t);

typedef struct {
    int dim; // transformer dimension
    int hidden_dim; // for ffn layers
    int n_layers; // number of layers
    int n_heads; // number of query heads
    int n_kv_heads; // number of key/value heads (can be < query heads because of multiquery)
    int vocab_size; // vocabulary size, usually 256 (byte-level)
    int seq_len; // max sequence length
} Config;

typedef struct {
    // token embedding table
    float* token_embedding_table;    // (vocab_size, dim)
    // weights for rmsnorms
    float* rms_att_weight; // (layer, dim) rmsnorm weights
    float* rms_ffn_weight; // (layer, dim)
    // weights for matmuls. note dim == n_heads * head_size
    float* wq; // (layer, dim, n_heads * head_size)
    float* wk; // (layer, dim, n_kv_heads * head_size)
    float* wv; // (layer, dim, n_kv_heads * head_size)
    float* wo; // (layer, n_heads * head_size, dim)
    // weights for ffn
    float* w1; // (layer, hidden_dim, dim)
    float* w2; // (layer, dim, hidden_dim)
    float* w3; // (layer, hidden_dim, dim)
    // final rmsnorm
    float* rms_final_weight; // (dim,)
    // (optional) classifier weights for the logits, on the last layer
    float* wcls;
} TransformerWeights;

typedef struct {
    // current wave of activations
    float *x; // activation at current time stamp (dim,)
    float *xb; // same, but inside a residual branch (dim,)
    float *xb2; // an additional buffer just for convenience (dim,)
    float *hb; // buffer for hidden dimension in the ffn (hidden_dim,)
    float *hb2; // buffer for hidden dimension in the ffn (hidden_dim,)
    float *q; // query (dim,)
    float *k; // key (dim,)
    float *v; // value (dim,)
    float *att; // buffer for scores/attention values (n_heads, seq_len)
    float *logits; // output logits
    // kv cache
    float* key_cache;   // (layer, seq_len, dim)
    float* value_cache; // (layer, seq_len, dim)
} RunState;

typedef struct {
    Config config; // the hyperparameters of the architecture (the blueprint)
    TransformerWeights weights; // the weights of the model
    RunState state; // buffers for the "wave" of activations in the forward pass
    // some more state needed to properly clean up the memory mapping (sigh)
    int fd; // file descriptor for memory mapping
    float* data; // memory mapped data pointer
    ssize_t file_size; // size of the checkpoint file in bytes
} Transformer;

void build_transformer(Transformer *t, char* checkpoint_path);
void free_transformer(Transformer* t);

typedef struct {
    float prob;
    int index;
} ProbIndex; // struct used when sorting probabilities during top-p sampling

typedef struct {
    int vocab_size;
    ProbIndex* probindex; // buffer used in top-p sampling
    float temperature;
    float topp;
    unsigned long long rng_state;
} Sampler;

void build_sampler(Sampler* sampler, int vocab_size, float temperature, float topp, unsigned long long rng_seed);
void free_sampler(Sampler* sampler);

void generate(Transformer *transformer, Tokenizer *tokenizer, Sampler *sampler, char *prompt, int steps);

*/

// -----------------------------------------------------------------------------

// llgo:type C
type TokenIndex struct {
	Str *Char
	Id  Int
}

// llgo:type C
type Tokenizer struct {
	Vocab          **Char
	VocabScores    *Float
	SortedVocab    *TokenIndex
	VocabSize      Int
	MaxTokenLength Uint
	BytePieces     [512]uint8 // stores all single-byte strings
}

//go:linkname BuildTokenizer C.build_tokenizer
func BuildTokenizer(t *Tokenizer, tokenizerPath *Char, vocabSize Int)

//go:linkname FreeTokenizer C.free_tokenizer
func FreeTokenizer(t *Tokenizer)

// -----------------------------------------------------------------------------

// llgo:type C
type Config struct {
	Dim       Int // transformer dimension
	HiddenDim Int // for ffn layers
	NLayers   Int // number of layers
	NHeads    Int // number of query heads
	NKVHeads  Int // number of key/value heads (can be < query heads because of multiquery)
	VocabSize Int // vocabulary size, usually 256 (byte-level)
	SeqLen    Int // max sequence length
}

// llgo:type C
type TransformerWeights struct {
	// token embedding table
	TokenEmbeddingTable *Float // (vocab_size, dim)
	// weights for rmsnorms
	RmsAttWeight *Float // (layer, dim) rmsnorm weights
	RmsFfnWeight *Float // (layer, dim)
	// weights for matmuls. note dim == n_heads * head_size
	Wq *Float // (layer, dim, n_heads * head_size)
	Wk *Float // (layer, dim, n_kv_heads * head_size)
	Wv *Float // (layer, dim, n_kv_heads * head_size)
	Wo *Float // (layer, n_heads * head_size, dim)
	// weights for ffn
	W1 *Float // (layer, hidden_dim, dim)
	W2 *Float // (layer, dim, hidden_dim)
	W3 *Float // (layer, hidden_dim, dim)
	// final rmsnorm
	RmsFinalWeight *Float // (dim,)
	// (optional) classifier weights for the logits, on the last layer
	Wcls *Float
}

// llgo:type C
type RunState struct {
	// current wave of activations
	X      *Float // activation at current time stamp (dim,)
	Xb     *Float // same, but inside a residual branch (dim,)
	Xb2    *Float // an additional buffer just for convenience (dim,)
	Hb     *Float // buffer for hidden dimension in the ffn (hidden_dim,)
	Hb2    *Float // buffer for hidden dimension in the ffn (hidden_dim,)
	Q      *Float // query (dim,)
	K      *Float // key (dim,)
	V      *Float // value (dim,)
	Att    *Float // buffer for scores/attention values (n_heads, seq_len)
	Logits *Float // output logits
	// kv cache
	KeyCache   *Float // (layer, seq_len, dim)
	ValueCache *Float // (layer, seq_len, dim)
}

// llgo:type C
type Transformer struct {
	Config  Config             // the hyperparameters of the architecture (the blueprint)
	Weights TransformerWeights // the weights of the model
	State   RunState           // buffers for the "wave" of activations in the forward pass

	// some more state needed to properly clean up the memory mapping (sigh)
	Fd       Int     // file descriptor for memory mapping
	Data     *Float  // memory mapped data pointer
	FileSize uintptr // size of the checkpoint file in bytes
}

//go:linkname BuildTransformer C.build_transformer
func BuildTransformer(t *Transformer, checkpoint_path *Char)

//go:linkname FreeTransformer C.free_transformer
func FreeTransformer(t *Transformer)

// -----------------------------------------------------------------------------

// llgo:type C
type ProbIndex struct {
	Prob  Float
	Index Int
} // struct used when sorting probabilities during top-p sampling

// llgo:type C
type Sampler struct {
	VocabSize   Int
	Probindex   *ProbIndex // buffer used in top-p sampling
	Temperature Float
	Topp        Float
	RngState    uint64
}

//go:linkname BuildSampler C.build_sampler
func BuildSampler(sampler *Sampler, vocabSize Int, temperature Float, topp Float, rngSeed uint64)

//go:linkname FreeSampler C.free_sampler
func FreeSampler(sampler *Sampler)

// -----------------------------------------------------------------------------

//go:linkname Generate C.generate
func Generate(
	transformer *Transformer, tokenizer *Tokenizer, sampler *Sampler,
	prompt *Char, steps Int)

//go:linkname Chat C.chat
func Chat(
	transformer *Transformer, tokenizer *Tokenizer, sampler *Sampler,
	cliUserPrompt *Char, cliSystemPrompt *Char, steps Int)

// -----------------------------------------------------------------------------
