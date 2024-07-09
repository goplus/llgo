package sled

import "github.com/goplus/llgo/c"

// Write the .pc file for the dylib generated by the Rust library and copy it to pkg-config for proper location.
const (
	LLGoPackage = "link: $(pkg-config --libs sled); -lsled"
)

type Config struct {
	Unused [8]byte
}

type DB struct {
	Unused [8]byte
}

// Create a new configuration
// llgo:link CreateConfig C.sled_create_config
func CreateConfig() *Config { return nil }

// Free a configuration
// llgo:link (*Config).FreeConfig C.sled_free_config
func (conf *Config) FreeConfig() {}

// Set the configured file path
// llgo:link (*Config).SetPath C.sled_config_set_path
func (conf *Config) SetPath(path *c.Char) *Config { return nil }

// Set the configured cache capacity in bytes
// llgo:link (*Config).SetCacheCapacity C.sled_config_set_cache_capacity
func (conf *Config) SetCacheCapacity(capacity c.Ulong) *Config { return nil }

// Configure the use of the zstd compression library
// llgo:link (*Config).UseCompression C.sled_config_use_compression
func (conf *Config) UseCompression(use_compression c.Char) *Config { return nil }

// Set the configured IO buffer flush interval in milliseconds
// llgo:link (*Config).SetFlushEveryMs C.sled_config_flush_every_ms
func (conf *Config) SetFlushEveryMs(flush_every c.Int) *Config { return nil }

// Open a sled lock-free log-structured tree
// llgo:link (*Config).OpenDb C.sled_open_db
func (conf *Config) OpenDb() *DB { return nil }

// Close a sled lock-free log-structured tree
// llgo:link (*DB).Close C.sled_close
func (db *DB) Close() {}

// Free a buffer originally allocated by sled
// llgo:link FreeBuf C.sled_free_buf
func FreeBuf(buf *c.Char, sz c.Ulong) {}

// Set a key to a value
// llgo:link (*DB).Set C.sled_set
func (db *DB) Set(key *c.Char, keylen c.Ulong, val *c.Char, vallen c.Ulong) {}

// Get the value of a key
// llgo:link (*DB).Get C.sled_get
func (db *DB) Get(key *c.Char, keylen c.Ulong, vallen *c.Ulong) *c.Char { return nil }

// Delete the value of a key
// llgo:link (*DB).Del C.sled_del
func (db *DB) Del(key *c.Char, keylen c.Ulong) {}

// Compare and swap
// llgo:link (*DB).CompareAndSwap C.sled_compare_and_swap
func (db *DB) CompareAndSwap(key *c.Char, keylen c.Ulong, old_val *c.Char, old_vallen c.Ulong, new_val *c.Char, new_vallen c.Ulong, actual_val **c.Char, actual_vallen *c.Ulong) c.Char {
	return 0
}