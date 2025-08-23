//go:build !llgo
// +build !llgo

package firmware

import "testing"

func TestBinaryExt(t *testing.T) {
	tests := []struct {
		name         string
		binaryFormat string
		expected     string
	}{
		{"ESP32", "esp32", ".bin"},
		{"ESP8266", "esp8266", ".bin"},
		{"ESP32C3", "esp32c3", ".bin"},
		{"UF2", "uf2", ".uf2"},
		{"ELF", "elf", ""},
		{"Empty", "", ""},
		{"NRF-DFU", "nrf-dfu", ".zip"},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := BinaryExt(tt.binaryFormat)
			if result != tt.expected {
				t.Errorf("BinaryExt() = %q, want %q", result, tt.expected)
			}
		})
	}
}
