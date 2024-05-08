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

loop: // parse command line arguments
	for {
		switch c.Getopt(c.Argc, c.Argv, c.Str("m:")) {
		case 'm':
			checkpointPath = c.Optarg
			c.Fprintf(c.Stderr, c.Str("==> use model: %s\n"), checkpointPath)
		case -1:
			break loop
		}
	}
	if c.Optind < c.Argc {
		prompt = c.Index(c.Argv, c.Optind)
		c.Fprintf(c.Stderr, c.Str("==> prompt: %s\n"), prompt)
	}

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
