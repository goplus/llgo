package netip_test

import (
	"net/netip"
	"testing"
)

func TestAddrFrom4(t *testing.T) {
	addr := netip.AddrFrom4([4]byte{192, 168, 1, 1})
	if !addr.IsValid() {
		t.Error("AddrFrom4 returned invalid address")
	}
	if !addr.Is4() {
		t.Error("AddrFrom4 did not return IPv4 address")
	}
}

func TestAddrFrom16(t *testing.T) {
	addr := netip.AddrFrom16([16]byte{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1})
	if !addr.IsValid() {
		t.Error("AddrFrom16 returned invalid address")
	}
	if !addr.Is6() {
		t.Error("AddrFrom16 did not return IPv6 address")
	}
}

func TestAddrFromSlice(t *testing.T) {
	tests := []struct {
		slice []byte
		ok    bool
	}{
		{[]byte{192, 168, 1, 1}, true},
		{[]byte{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, true},
		{[]byte{1, 2, 3}, false},
		{nil, false},
	}
	for _, tt := range tests {
		addr, ok := netip.AddrFromSlice(tt.slice)
		if ok != tt.ok {
			t.Errorf("AddrFromSlice(%v) ok = %v, want %v", tt.slice, ok, tt.ok)
		}
		if ok && !addr.IsValid() {
			t.Error("AddrFromSlice returned invalid address when ok=true")
		}
	}
}

func TestIPv4Unspecified(t *testing.T) {
	addr := netip.IPv4Unspecified()
	if !addr.IsValid() {
		t.Error("IPv4Unspecified returned invalid address")
	}
	if !addr.IsUnspecified() {
		t.Error("IPv4Unspecified did not return unspecified address")
	}
}

func TestIPv6Unspecified(t *testing.T) {
	addr := netip.IPv6Unspecified()
	if !addr.IsValid() {
		t.Error("IPv6Unspecified returned invalid address")
	}
	if !addr.IsUnspecified() {
		t.Error("IPv6Unspecified did not return unspecified address")
	}
}

func TestIPv6Loopback(t *testing.T) {
	addr := netip.IPv6Loopback()
	if !addr.IsValid() {
		t.Error("IPv6Loopback returned invalid address")
	}
	if !addr.IsLoopback() {
		t.Error("IPv6Loopback did not return loopback address")
	}
}

func TestIPv6LinkLocalAllNodes(t *testing.T) {
	addr := netip.IPv6LinkLocalAllNodes()
	if !addr.IsValid() {
		t.Error("IPv6LinkLocalAllNodes returned invalid address")
	}
	if !addr.IsMulticast() {
		t.Error("IPv6LinkLocalAllNodes did not return multicast address")
	}
}

func TestIPv6LinkLocalAllRouters(t *testing.T) {
	addr := netip.IPv6LinkLocalAllRouters()
	if !addr.IsValid() {
		t.Error("IPv6LinkLocalAllRouters returned invalid address")
	}
	if !addr.IsMulticast() {
		t.Error("IPv6LinkLocalAllRouters did not return multicast address")
	}
}

func TestParseAddr(t *testing.T) {
	tests := []struct {
		input   string
		wantErr bool
	}{
		{"192.168.1.1", false},
		{"::1", false},
		{"2001:db8::1", false},
		{"invalid", true},
		{"", true},
	}
	for _, tt := range tests {
		addr, err := netip.ParseAddr(tt.input)
		if (err != nil) != tt.wantErr {
			t.Errorf("ParseAddr(%q) error = %v, wantErr %v", tt.input, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && !addr.IsValid() {
			t.Errorf("ParseAddr(%q) returned invalid address", tt.input)
		}
	}
}

func TestMustParseAddr(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Error("MustParseAddr did not panic on invalid input")
		}
	}()
	addr := netip.MustParseAddr("192.168.1.1")
	if !addr.IsValid() {
		t.Error("MustParseAddr returned invalid address")
	}
	netip.MustParseAddr("invalid")
}

func TestAddrIs4(t *testing.T) {
	addr4 := netip.MustParseAddr("192.168.1.1")
	if !addr4.Is4() {
		t.Error("IPv4 address Is4() = false")
	}
	addr6 := netip.MustParseAddr("::1")
	if addr6.Is4() {
		t.Error("IPv6 address Is4() = true")
	}
}

func TestAddrIs6(t *testing.T) {
	addr6 := netip.MustParseAddr("::1")
	if !addr6.Is6() {
		t.Error("IPv6 address Is6() = false")
	}
	addr4 := netip.MustParseAddr("192.168.1.1")
	if addr4.Is6() {
		t.Error("IPv4 address Is6() = true")
	}
}

func TestAddrIs4In6(t *testing.T) {
	addr := netip.MustParseAddr("::ffff:192.168.1.1")
	if !addr.Is4In6() {
		t.Error("IPv4-in-IPv6 address Is4In6() = false")
	}
}

func TestAddrIsLoopback(t *testing.T) {
	tests := []struct {
		addr string
		want bool
	}{
		{"127.0.0.1", true},
		{"::1", true},
		{"192.168.1.1", false},
	}
	for _, tt := range tests {
		addr := netip.MustParseAddr(tt.addr)
		if got := addr.IsLoopback(); got != tt.want {
			t.Errorf("Addr(%q).IsLoopback() = %v, want %v", tt.addr, got, tt.want)
		}
	}
}

func TestAddrIsMulticast(t *testing.T) {
	tests := []struct {
		addr string
		want bool
	}{
		{"224.0.0.1", true},
		{"ff02::1", true},
		{"192.168.1.1", false},
	}
	for _, tt := range tests {
		addr := netip.MustParseAddr(tt.addr)
		if got := addr.IsMulticast(); got != tt.want {
			t.Errorf("Addr(%q).IsMulticast() = %v, want %v", tt.addr, got, tt.want)
		}
	}
}

func TestAddrIsPrivate(t *testing.T) {
	tests := []struct {
		addr string
		want bool
	}{
		{"192.168.1.1", true},
		{"10.0.0.1", true},
		{"172.16.0.1", true},
		{"8.8.8.8", false},
	}
	for _, tt := range tests {
		addr := netip.MustParseAddr(tt.addr)
		if got := addr.IsPrivate(); got != tt.want {
			t.Errorf("Addr(%q).IsPrivate() = %v, want %v", tt.addr, got, tt.want)
		}
	}
}

func TestAddrIsGlobalUnicast(t *testing.T) {
	addr := netip.MustParseAddr("8.8.8.8")
	if !addr.IsGlobalUnicast() {
		t.Error("Public IPv4 IsGlobalUnicast() = false")
	}
}

func TestAddrIsLinkLocalUnicast(t *testing.T) {
	addr := netip.MustParseAddr("169.254.1.1")
	if !addr.IsLinkLocalUnicast() {
		t.Error("Link-local address IsLinkLocalUnicast() = false")
	}
}

func TestAddrIsLinkLocalMulticast(t *testing.T) {
	addr := netip.MustParseAddr("224.0.0.1")
	if !addr.IsLinkLocalMulticast() {
		t.Error("Link-local multicast IsLinkLocalMulticast() = false")
	}
}

func TestAddrIsInterfaceLocalMulticast(t *testing.T) {
	addr := netip.MustParseAddr("ff01::1")
	if !addr.IsInterfaceLocalMulticast() {
		t.Error("Interface-local multicast IsInterfaceLocalMulticast() = false")
	}
}

func TestAddrIsUnspecified(t *testing.T) {
	addr := netip.IPv4Unspecified()
	if !addr.IsUnspecified() {
		t.Error("Unspecified address IsUnspecified() = false")
	}
}

func TestAddrIsValid(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	if !addr.IsValid() {
		t.Error("Valid address IsValid() = false")
	}
	var zero netip.Addr
	if zero.IsValid() {
		t.Error("Zero address IsValid() = true")
	}
}

func TestAddrString(t *testing.T) {
	tests := []struct {
		input string
	}{
		{"192.168.1.1"},
		{"::1"},
		{"2001:db8::1"},
	}
	for _, tt := range tests {
		addr := netip.MustParseAddr(tt.input)
		got := addr.String()
		if got != tt.input {
			t.Errorf("Addr(%q).String() = %q, want %q", tt.input, got, tt.input)
		}
	}
}

func TestAddrStringExpanded(t *testing.T) {
	addr := netip.MustParseAddr("2001:db8::1")
	expanded := addr.StringExpanded()
	if expanded == "2001:db8::1" {
		t.Error("StringExpanded() returned abbreviated form")
	}
}

func TestAddrAs4(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	a4 := addr.As4()
	if a4 != [4]byte{192, 168, 1, 1} {
		t.Errorf("As4() = %v, want [192 168 1 1]", a4)
	}
}

func TestAddrAs16(t *testing.T) {
	addr := netip.MustParseAddr("::1")
	a16 := addr.As16()
	if a16[15] != 1 {
		t.Error("As16() did not return correct IPv6 bytes")
	}
}

func TestAddrAsSlice(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	slice := addr.AsSlice()
	if len(slice) != 4 {
		t.Errorf("AsSlice() len = %d, want 4", len(slice))
	}
}

func TestAddrBitLen(t *testing.T) {
	addr4 := netip.MustParseAddr("192.168.1.1")
	if addr4.BitLen() != 32 {
		t.Errorf("IPv4 BitLen() = %d, want 32", addr4.BitLen())
	}
	addr6 := netip.MustParseAddr("::1")
	if addr6.BitLen() != 128 {
		t.Errorf("IPv6 BitLen() = %d, want 128", addr6.BitLen())
	}
}

func TestAddrZone(t *testing.T) {
	addr := netip.MustParseAddr("fe80::1%eth0")
	if addr.Zone() != "eth0" {
		t.Errorf("Zone() = %q, want %q", addr.Zone(), "eth0")
	}
}

func TestAddrWithZone(t *testing.T) {
	addr := netip.MustParseAddr("fe80::1")
	withZone := addr.WithZone("eth0")
	if withZone.Zone() != "eth0" {
		t.Errorf("WithZone().Zone() = %q, want %q", withZone.Zone(), "eth0")
	}
}

func TestAddrCompare(t *testing.T) {
	addr1 := netip.MustParseAddr("192.168.1.1")
	addr2 := netip.MustParseAddr("192.168.1.2")
	if addr1.Compare(addr2) >= 0 {
		t.Error("Compare() did not return negative for smaller address")
	}
	if addr2.Compare(addr1) <= 0 {
		t.Error("Compare() did not return positive for larger address")
	}
	if addr1.Compare(addr1) != 0 {
		t.Error("Compare() did not return 0 for equal addresses")
	}
}

func TestAddrLess(t *testing.T) {
	addr1 := netip.MustParseAddr("192.168.1.1")
	addr2 := netip.MustParseAddr("192.168.1.2")
	if !addr1.Less(addr2) {
		t.Error("Less() = false for smaller address")
	}
	if addr2.Less(addr1) {
		t.Error("Less() = true for larger address")
	}
}

func TestAddrNext(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	next := addr.Next()
	want := netip.MustParseAddr("192.168.1.2")
	if next != want {
		t.Errorf("Next() = %v, want %v", next, want)
	}
}

func TestAddrPrev(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.2")
	prev := addr.Prev()
	want := netip.MustParseAddr("192.168.1.1")
	if prev != want {
		t.Errorf("Prev() = %v, want %v", prev, want)
	}
}

func TestAddrUnmap(t *testing.T) {
	addr := netip.MustParseAddr("::ffff:192.168.1.1")
	unmapped := addr.Unmap()
	if !unmapped.Is4() {
		t.Error("Unmap() did not return IPv4 address")
	}
}

func TestAddrPrefix(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	prefix, err := addr.Prefix(24)
	if err != nil {
		t.Fatalf("Prefix() error = %v", err)
	}
	if !prefix.IsValid() {
		t.Error("Prefix() returned invalid prefix")
	}
}

func TestAddrMarshalText(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	text, err := addr.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText() error = %v", err)
	}
	if string(text) != "192.168.1.1" {
		t.Errorf("MarshalText() = %q, want %q", string(text), "192.168.1.1")
	}
}

func TestAddrUnmarshalText(t *testing.T) {
	var addr netip.Addr
	err := addr.UnmarshalText([]byte("192.168.1.1"))
	if err != nil {
		t.Fatalf("UnmarshalText() error = %v", err)
	}
	if !addr.IsValid() {
		t.Error("UnmarshalText() returned invalid address")
	}
}

func TestAddrMarshalBinary(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	data, err := addr.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary() error = %v", err)
	}
	if len(data) == 0 {
		t.Error("MarshalBinary() returned empty data")
	}
}

func TestAddrUnmarshalBinary(t *testing.T) {
	original := netip.MustParseAddr("192.168.1.1")
	data, err := original.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary() error = %v", err)
	}
	var addr netip.Addr
	err = addr.UnmarshalBinary(data)
	if err != nil {
		t.Fatalf("UnmarshalBinary() error = %v", err)
	}
	if addr != original {
		t.Errorf("UnmarshalBinary() = %v, want %v", addr, original)
	}
}

func TestAddrAppendTo(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	b := []byte("prefix:")
	result := addr.AppendTo(b)
	if len(result) <= len(b) {
		t.Error("AppendTo() did not append data")
	}
}

func TestAddrAppendText(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	b := []byte("prefix:")
	result, err := addr.AppendText(b)
	if err != nil {
		t.Fatalf("AppendText() error = %v", err)
	}
	if len(result) <= len(b) {
		t.Error("AppendText() did not append data")
	}
}

func TestAddrAppendBinary(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	b := []byte("prefix")
	result, err := addr.AppendBinary(b)
	if err != nil {
		t.Fatalf("AppendBinary() error = %v", err)
	}
	if len(result) <= len(b) {
		t.Error("AppendBinary() did not append data")
	}
}

func TestAddrPortFrom(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.1")
	ap := netip.AddrPortFrom(addr, 8080)
	if !ap.IsValid() {
		t.Error("AddrPortFrom returned invalid AddrPort")
	}
}

func TestParseAddrPort(t *testing.T) {
	tests := []struct {
		input   string
		wantErr bool
	}{
		{"192.168.1.1:8080", false},
		{"[::1]:8080", false},
		{"invalid", true},
	}
	for _, tt := range tests {
		ap, err := netip.ParseAddrPort(tt.input)
		if (err != nil) != tt.wantErr {
			t.Errorf("ParseAddrPort(%q) error = %v, wantErr %v", tt.input, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && !ap.IsValid() {
			t.Errorf("ParseAddrPort(%q) returned invalid AddrPort", tt.input)
		}
	}
}

func TestMustParseAddrPort(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Error("MustParseAddrPort did not panic on invalid input")
		}
	}()
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	if !ap.IsValid() {
		t.Error("MustParseAddrPort returned invalid AddrPort")
	}
	netip.MustParseAddrPort("invalid")
}

func TestAddrPortAddr(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	addr := ap.Addr()
	if !addr.IsValid() {
		t.Error("AddrPort.Addr() returned invalid address")
	}
}

func TestAddrPortPort(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	if ap.Port() != 8080 {
		t.Errorf("Port() = %d, want 8080", ap.Port())
	}
}

func TestAddrPortIsValid(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	if !ap.IsValid() {
		t.Error("Valid AddrPort IsValid() = false")
	}
	var zero netip.AddrPort
	if zero.IsValid() {
		t.Error("Zero AddrPort IsValid() = true")
	}
}

func TestAddrPortString(t *testing.T) {
	tests := []struct {
		input string
	}{
		{"192.168.1.1:8080"},
		{"[::1]:8080"},
	}
	for _, tt := range tests {
		ap := netip.MustParseAddrPort(tt.input)
		got := ap.String()
		if got != tt.input {
			t.Errorf("AddrPort(%q).String() = %q, want %q", tt.input, got, tt.input)
		}
	}
}

func TestAddrPortCompare(t *testing.T) {
	ap1 := netip.MustParseAddrPort("192.168.1.1:8080")
	ap2 := netip.MustParseAddrPort("192.168.1.1:8081")
	if ap1.Compare(ap2) >= 0 {
		t.Error("Compare() did not return negative for smaller port")
	}
}

func TestAddrPortMarshalText(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	text, err := ap.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText() error = %v", err)
	}
	if len(text) == 0 {
		t.Error("MarshalText() returned empty data")
	}
}

func TestAddrPortUnmarshalText(t *testing.T) {
	var ap netip.AddrPort
	err := ap.UnmarshalText([]byte("192.168.1.1:8080"))
	if err != nil {
		t.Fatalf("UnmarshalText() error = %v", err)
	}
	if !ap.IsValid() {
		t.Error("UnmarshalText() returned invalid AddrPort")
	}
}

func TestAddrPortMarshalBinary(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	data, err := ap.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary() error = %v", err)
	}
	if len(data) == 0 {
		t.Error("MarshalBinary() returned empty data")
	}
}

func TestAddrPortUnmarshalBinary(t *testing.T) {
	original := netip.MustParseAddrPort("192.168.1.1:8080")
	data, err := original.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary() error = %v", err)
	}
	var ap netip.AddrPort
	err = ap.UnmarshalBinary(data)
	if err != nil {
		t.Fatalf("UnmarshalBinary() error = %v", err)
	}
	if ap != original {
		t.Errorf("UnmarshalBinary() = %v, want %v", ap, original)
	}
}

func TestAddrPortAppendTo(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	b := []byte("prefix:")
	result := ap.AppendTo(b)
	if len(result) <= len(b) {
		t.Error("AppendTo() did not append data")
	}
}

func TestAddrPortAppendText(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	b := []byte("prefix:")
	result, err := ap.AppendText(b)
	if err != nil {
		t.Fatalf("AppendText() error = %v", err)
	}
	if len(result) <= len(b) {
		t.Error("AppendText() did not append data")
	}
}

func TestAddrPortAppendBinary(t *testing.T) {
	ap := netip.MustParseAddrPort("192.168.1.1:8080")
	b := []byte("prefix")
	result, err := ap.AppendBinary(b)
	if err != nil {
		t.Fatalf("AppendBinary() error = %v", err)
	}
	if len(result) <= len(b) {
		t.Error("AppendBinary() did not append data")
	}
}

func TestPrefixFrom(t *testing.T) {
	addr := netip.MustParseAddr("192.168.1.0")
	prefix := netip.PrefixFrom(addr, 24)
	if !prefix.IsValid() {
		t.Error("PrefixFrom returned invalid Prefix")
	}
}

func TestParsePrefix(t *testing.T) {
	tests := []struct {
		input   string
		wantErr bool
	}{
		{"192.168.1.0/24", false},
		{"2001:db8::/32", false},
		{"invalid", true},
	}
	for _, tt := range tests {
		prefix, err := netip.ParsePrefix(tt.input)
		if (err != nil) != tt.wantErr {
			t.Errorf("ParsePrefix(%q) error = %v, wantErr %v", tt.input, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && !prefix.IsValid() {
			t.Errorf("ParsePrefix(%q) returned invalid Prefix", tt.input)
		}
	}
}

func TestMustParsePrefix(t *testing.T) {
	defer func() {
		if r := recover(); r == nil {
			t.Error("MustParsePrefix did not panic on invalid input")
		}
	}()
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	if !prefix.IsValid() {
		t.Error("MustParsePrefix returned invalid Prefix")
	}
	netip.MustParsePrefix("invalid")
}

func TestPrefixAddr(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	addr := prefix.Addr()
	if !addr.IsValid() {
		t.Error("Prefix.Addr() returned invalid address")
	}
}

func TestPrefixBits(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	if prefix.Bits() != 24 {
		t.Errorf("Bits() = %d, want 24", prefix.Bits())
	}
}

func TestPrefixIsValid(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	if !prefix.IsValid() {
		t.Error("Valid Prefix IsValid() = false")
	}
	var zero netip.Prefix
	if zero.IsValid() {
		t.Error("Zero Prefix IsValid() = true")
	}
}

func TestPrefixString(t *testing.T) {
	tests := []struct {
		input string
	}{
		{"192.168.1.0/24"},
		{"2001:db8::/32"},
	}
	for _, tt := range tests {
		prefix := netip.MustParsePrefix(tt.input)
		got := prefix.String()
		if got != tt.input {
			t.Errorf("Prefix(%q).String() = %q, want %q", tt.input, got, tt.input)
		}
	}
}

func TestPrefixContains(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	addr1 := netip.MustParseAddr("192.168.1.1")
	addr2 := netip.MustParseAddr("192.168.2.1")
	if !prefix.Contains(addr1) {
		t.Error("Contains() = false for address in prefix")
	}
	if prefix.Contains(addr2) {
		t.Error("Contains() = true for address outside prefix")
	}
}

func TestPrefixOverlaps(t *testing.T) {
	prefix1 := netip.MustParsePrefix("192.168.1.0/24")
	prefix2 := netip.MustParsePrefix("192.168.1.128/25")
	prefix3 := netip.MustParsePrefix("192.168.2.0/24")
	if !prefix1.Overlaps(prefix2) {
		t.Error("Overlaps() = false for overlapping prefixes")
	}
	if prefix1.Overlaps(prefix3) {
		t.Error("Overlaps() = true for non-overlapping prefixes")
	}
}

func TestPrefixMasked(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.1/24")
	masked := prefix.Masked()
	want := netip.MustParsePrefix("192.168.1.0/24")
	if masked != want {
		t.Errorf("Masked() = %v, want %v", masked, want)
	}
}

func TestPrefixIsSingleIP(t *testing.T) {
	prefix32 := netip.MustParsePrefix("192.168.1.1/32")
	if !prefix32.IsSingleIP() {
		t.Error("/32 prefix IsSingleIP() = false")
	}
	prefix24 := netip.MustParsePrefix("192.168.1.0/24")
	if prefix24.IsSingleIP() {
		t.Error("/24 prefix IsSingleIP() = true")
	}
}

func TestPrefixMarshalText(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	text, err := prefix.MarshalText()
	if err != nil {
		t.Fatalf("MarshalText() error = %v", err)
	}
	if string(text) != "192.168.1.0/24" {
		t.Errorf("MarshalText() = %q, want %q", string(text), "192.168.1.0/24")
	}
}

func TestPrefixUnmarshalText(t *testing.T) {
	var prefix netip.Prefix
	err := prefix.UnmarshalText([]byte("192.168.1.0/24"))
	if err != nil {
		t.Fatalf("UnmarshalText() error = %v", err)
	}
	if !prefix.IsValid() {
		t.Error("UnmarshalText() returned invalid Prefix")
	}
}

func TestPrefixMarshalBinary(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	data, err := prefix.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary() error = %v", err)
	}
	if len(data) == 0 {
		t.Error("MarshalBinary() returned empty data")
	}
}

func TestPrefixUnmarshalBinary(t *testing.T) {
	original := netip.MustParsePrefix("192.168.1.0/24")
	data, err := original.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary() error = %v", err)
	}
	var prefix netip.Prefix
	err = prefix.UnmarshalBinary(data)
	if err != nil {
		t.Fatalf("UnmarshalBinary() error = %v", err)
	}
	if prefix != original {
		t.Errorf("UnmarshalBinary() = %v, want %v", prefix, original)
	}
}

func TestPrefixAppendTo(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	b := []byte("prefix:")
	result := prefix.AppendTo(b)
	if len(result) <= len(b) {
		t.Error("AppendTo() did not append data")
	}
}

func TestPrefixAppendText(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	b := []byte("prefix:")
	result, err := prefix.AppendText(b)
	if err != nil {
		t.Fatalf("AppendText() error = %v", err)
	}
	if len(result) <= len(b) {
		t.Error("AppendText() did not append data")
	}
}

func TestPrefixAppendBinary(t *testing.T) {
	prefix := netip.MustParsePrefix("192.168.1.0/24")
	b := []byte("prefix")
	result, err := prefix.AppendBinary(b)
	if err != nil {
		t.Fatalf("AppendBinary() error = %v", err)
	}
	if len(result) <= len(b) {
		t.Error("AppendBinary() did not append data")
	}
}
