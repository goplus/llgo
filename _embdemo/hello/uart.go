package main

//go:linkname WriteByte C.board_uart_write_char
func WriteByte(b byte)
