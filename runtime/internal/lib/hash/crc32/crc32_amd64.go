package crc32

func archUpdateIEEE(crc uint32, p []byte) uint32 {
	const poly = 0xedb88320
	for _, b := range p {
		crc ^= uint32(b)
		for i := 0; i < 8; i++ {
			if crc&1 != 0 {
				crc = (crc >> 1) ^ poly
			} else {
				crc >>= 1
			}
		}
	}
	return crc
}
