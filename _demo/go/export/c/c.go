package C

// XType - struct for export.go to use
type XType struct {
	ID    int32   `json:"id"`
	Name  string  `json:"name"`
	Value float64 `json:"value"`
	Flag  bool    `json:"flag"`
}

func XAdd(a, b int) int {
	return a + b
}

func Sub(a, b int64) int64 {
	return a - b
}

func sub(a, b uint32) uint32 {
	return a - b
}

func Xmul(a, b float32) float32 {
	return a * b
}

func Concat(a, b string) string {
	return a + b
}
