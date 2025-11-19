package main
import ("fmt"; "math/big")

func main() {
	testInt()
	testRat()
	testFloat()
	fmt.Println("\n=== All math/big tests passed ===")
}

func testInt() {
	fmt.Println("=== Test Int ===")
	
	// NewInt
	a := big.NewInt(10)
	b := big.NewInt(5)
	
	// Add
	result := new(big.Int).Add(a, b)
	if result.Cmp(big.NewInt(15)) != 0 { panic("Add failed") }
	
	// Sub
	result = new(big.Int).Sub(a, b)
	if result.Cmp(big.NewInt(5)) != 0 { panic("Sub failed") }
	
	// Mul
	result = new(big.Int).Mul(a, b)
	if result.Cmp(big.NewInt(50)) != 0 { panic("Mul failed") }
	
	// Quo
	result = new(big.Int).Quo(a, b)
	if result.Cmp(big.NewInt(2)) != 0 { panic("Quo failed") }
	
	// Rem
	c := big.NewInt(7)
	result = new(big.Int).Rem(c, b)
	if result.Cmp(big.NewInt(2)) != 0 { panic("Rem failed") }
	
	// Cmp
	if a.Cmp(b) <= 0 { panic("Cmp failed: 10 > 5") }
	
	// SetString
	d := new(big.Int)
	d.SetString("123", 10)
	if d.Cmp(big.NewInt(123)) != 0 { panic("SetString failed") }
	
	// Int64
	if !d.IsInt64() { panic("IsInt64 should be true") }
	if d.Int64() != 123 { panic("Int64 failed") }
	
	// SetUint64
	e := new(big.Int).SetUint64(456)
	if e.Cmp(big.NewInt(456)) != 0 { panic("SetUint64 failed") }
	
	// Lsh/Rsh (bit shifts)
	f := big.NewInt(4)
	result = new(big.Int).Lsh(f, 2) // 4 << 2 = 16
	if result.Cmp(big.NewInt(16)) != 0 { panic("Lsh failed") }
	
	result = new(big.Int).Rsh(result, 1) // 16 >> 1 = 8
	if result.Cmp(big.NewInt(8)) != 0 { panic("Rsh failed") }
	
	// And, Or, Xor, AndNot
	x := big.NewInt(0b1100)
	y := big.NewInt(0b1010)
	
	result = new(big.Int).And(x, y)
	if result.Cmp(big.NewInt(0b1000)) != 0 { panic("And failed") }
	
	result = new(big.Int).Or(x, y)
	if result.Cmp(big.NewInt(0b1110)) != 0 { panic("Or failed") }
	
	result = new(big.Int).Xor(x, y)
	if result.Cmp(big.NewInt(0b0110)) != 0 { panic("Xor failed") }
	
	result = new(big.Int).AndNot(x, y)
	if result.Cmp(big.NewInt(0b0100)) != 0 { panic("AndNot failed") }
	
	// Neg
	result = new(big.Int).Neg(a)
	if result.Cmp(big.NewInt(-10)) != 0 { panic("Neg failed") }
	
	// Not (bitwise NOT)
	result = new(big.Int).Not(big.NewInt(-1))
	if result.Cmp(big.NewInt(0)) != 0 { panic("Not failed") }
	
	// Set
	g := new(big.Int).Set(a)
	if g.Cmp(a) != 0 { panic("Set failed") }
	
	// String
	if a.String() != "10" { panic("String failed") }
	
	fmt.Println("SUCCESS\n")
}

func testRat() {
	fmt.Println("=== Test Rat ===")
	
	// NewRat
	a := big.NewRat(3, 4)
	b := big.NewRat(1, 2)
	
	// Add
	result := new(big.Rat).Add(a, b)
	expected := big.NewRat(5, 4)
	if result.Cmp(expected) != 0 { panic("Rat.Add failed") }
	
	// Sub
	result = new(big.Rat).Sub(a, b)
	expected = big.NewRat(1, 4)
	if result.Cmp(expected) != 0 { panic("Rat.Sub failed") }
	
	// Mul
	result = new(big.Rat).Mul(a, b)
	expected = big.NewRat(3, 8)
	if result.Cmp(expected) != 0 { panic("Rat.Mul failed") }
	
	// Quo
	result = new(big.Rat).Quo(a, b)
	expected = big.NewRat(3, 2)
	if result.Cmp(expected) != 0 { panic("Rat.Quo failed") }
	
	// Cmp
	if a.Cmp(b) <= 0 { panic("Rat.Cmp failed: 3/4 > 1/2") }
	
	// SetInt
	c := new(big.Rat).SetInt(big.NewInt(5))
	if !c.IsInt() { panic("IsInt should be true") }
	if c.Num().Cmp(big.NewInt(5)) != 0 { panic("Num failed") }
	
	// Denom
	if c.Denom().Cmp(big.NewInt(1)) != 0 { panic("Denom should be 1") }
	
	// Neg
	result = new(big.Rat).Neg(a)
	expected = big.NewRat(-3, 4)
	if result.Cmp(expected) != 0 { panic("Rat.Neg failed") }
	
	// Set
	d := new(big.Rat).Set(a)
	if d.Cmp(a) != 0 { panic("Rat.Set failed") }
	
	fmt.Println("SUCCESS\n")
}

func testFloat() {
	fmt.Println("=== Test Float ===")
	
	// SetRat and Int
	f := new(big.Float).SetRat(big.NewRat(5, 2))
	i, _ := f.Int(nil)
	if i.Cmp(big.NewInt(2)) != 0 { panic("Float.Int failed") }
	
	fmt.Println("SUCCESS\n")
}
