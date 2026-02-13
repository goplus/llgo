package url_test

import (
	"net/url"
	"reflect"
	"testing"
)

func TestPathEscape(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", ""},
		{"abc", "abc"},
		{"one two", "one%20two"},
		{"10%", "10%25"},
		{"hello/world", "hello%2Fworld"},
		{" ?&=#+%!<>#\"{}|\\^[]`☺\t:/@$'()*,;", "%20%3F&=%23+%25%21%3C%3E%23%22%7B%7D%7C%5C%5E%5B%5D%60%E2%98%BA%09:%2F@$%27%28%29%2A%2C%3B"},
	}
	for _, tt := range tests {
		got := url.PathEscape(tt.input)
		if got != tt.want {
			t.Errorf("PathEscape(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestPathUnescape(t *testing.T) {
	tests := []struct {
		input   string
		want    string
		wantErr bool
	}{
		{"", "", false},
		{"abc", "abc", false},
		{"one%20two", "one two", false},
		{"10%25", "10%", false},
		{"%", "", true},
		{"%A", "", true},
		{"%ZZ", "", true},
	}
	for _, tt := range tests {
		got, err := url.PathUnescape(tt.input)
		if (err != nil) != tt.wantErr {
			t.Errorf("PathUnescape(%q) error = %v, wantErr %v", tt.input, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && got != tt.want {
			t.Errorf("PathUnescape(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestQueryEscape(t *testing.T) {
	tests := []struct {
		input string
		want  string
	}{
		{"", ""},
		{"abc", "abc"},
		{"one two", "one+two"},
		{"10%", "10%25"},
		{"a&b=c", "a%26b%3Dc"},
	}
	for _, tt := range tests {
		got := url.QueryEscape(tt.input)
		if got != tt.want {
			t.Errorf("QueryEscape(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestQueryUnescape(t *testing.T) {
	tests := []struct {
		input   string
		want    string
		wantErr bool
	}{
		{"", "", false},
		{"abc", "abc", false},
		{"one+two", "one two", false},
		{"10%25", "10%", false},
		{"a%26b%3Dc", "a&b=c", false},
		{"%", "", true},
	}
	for _, tt := range tests {
		got, err := url.QueryUnescape(tt.input)
		if (err != nil) != tt.wantErr {
			t.Errorf("QueryUnescape(%q) error = %v, wantErr %v", tt.input, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && got != tt.want {
			t.Errorf("QueryUnescape(%q) = %q, want %q", tt.input, got, tt.want)
		}
	}
}

func TestParse(t *testing.T) {
	tests := []struct {
		rawURL  string
		wantErr bool
	}{
		{"http://example.com", false},
		{"https://example.com/path?query=1", false},
		{"http://user:pass@host.com:8080/path", false},
		{"", false},
		{"http://[::1]:8080/", false},
		{":", true},
	}
	for _, tt := range tests {
		u, err := url.Parse(tt.rawURL)
		if (err != nil) != tt.wantErr {
			t.Errorf("Parse(%q) error = %v, wantErr %v", tt.rawURL, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && u == nil {
			t.Errorf("Parse(%q) returned nil URL", tt.rawURL)
		}
	}
}

func TestParseRequestURI(t *testing.T) {
	tests := []struct {
		rawURL  string
		wantErr bool
	}{
		{"http://example.com", false},
		{"https://example.com/path", false},
		{"/path", false},
		{"//host/path", false},
	}
	for _, tt := range tests {
		_, err := url.ParseRequestURI(tt.rawURL)
		if (err != nil) != tt.wantErr {
			t.Errorf("ParseRequestURI(%q) error = %v, wantErr %v", tt.rawURL, err, tt.wantErr)
		}
	}
}

func TestURLString(t *testing.T) {
	tests := []struct {
		url  *url.URL
		want string
	}{
		{
			&url.URL{Scheme: "http", Host: "example.com", Path: "/path"},
			"http://example.com/path",
		},
		{
			&url.URL{Scheme: "https", Host: "example.com", Path: "/path", RawQuery: "q=1"},
			"https://example.com/path?q=1",
		},
		{
			&url.URL{Scheme: "http", Host: "example.com", Path: "/path", Fragment: "frag"},
			"http://example.com/path#frag",
		},
	}
	for _, tt := range tests {
		got := tt.url.String()
		if got != tt.want {
			t.Errorf("URL.String() = %q, want %q", got, tt.want)
		}
	}
}

func TestURLHostname(t *testing.T) {
	tests := []struct {
		rawURL string
		want   string
	}{
		{"http://example.com", "example.com"},
		{"http://example.com:8080", "example.com"},
		{"http://[::1]:8080", "::1"},
		{"http://[::1]", "::1"},
	}
	for _, tt := range tests {
		u, err := url.Parse(tt.rawURL)
		if err != nil {
			t.Errorf("Parse(%q) error = %v", tt.rawURL, err)
			continue
		}
		got := u.Hostname()
		if got != tt.want {
			t.Errorf("URL(%q).Hostname() = %q, want %q", tt.rawURL, got, tt.want)
		}
	}
}

func TestURLPort(t *testing.T) {
	tests := []struct {
		rawURL string
		want   string
	}{
		{"http://example.com", ""},
		{"http://example.com:8080", "8080"},
		{"http://[::1]:8080", "8080"},
		{"http://[::1]", ""},
	}
	for _, tt := range tests {
		u, err := url.Parse(tt.rawURL)
		if err != nil {
			t.Errorf("Parse(%q) error = %v", tt.rawURL, err)
			continue
		}
		got := u.Port()
		if got != tt.want {
			t.Errorf("URL(%q).Port() = %q, want %q", tt.rawURL, got, tt.want)
		}
	}
}

func TestURLIsAbs(t *testing.T) {
	tests := []struct {
		rawURL string
		want   bool
	}{
		{"http://example.com", true},
		{"/path", false},
		{"//example.com/path", false},
		{"https://example.com/path", true},
	}
	for _, tt := range tests {
		u, err := url.Parse(tt.rawURL)
		if err != nil {
			t.Errorf("Parse(%q) error = %v", tt.rawURL, err)
			continue
		}
		got := u.IsAbs()
		if got != tt.want {
			t.Errorf("URL(%q).IsAbs() = %v, want %v", tt.rawURL, got, tt.want)
		}
	}
}

func TestURLQuery(t *testing.T) {
	u, err := url.Parse("http://example.com?a=1&b=2&a=3")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	q := u.Query()
	if q.Get("a") != "1" {
		t.Errorf("Query().Get(\"a\") = %q, want %q", q.Get("a"), "1")
	}
	if q.Get("b") != "2" {
		t.Errorf("Query().Get(\"b\") = %q, want %q", q.Get("b"), "2")
	}
	vals := q["a"]
	if len(vals) != 2 || vals[0] != "1" || vals[1] != "3" {
		t.Errorf("Query()[\"a\"] = %v, want [\"1\", \"3\"]", vals)
	}
}

func TestURLRequestURI(t *testing.T) {
	tests := []struct {
		rawURL string
		want   string
	}{
		{"http://example.com/path", "/path"},
		{"http://example.com/path?q=1", "/path?q=1"},
		{"http://example.com", "/"},
	}
	for _, tt := range tests {
		u, err := url.Parse(tt.rawURL)
		if err != nil {
			t.Errorf("Parse(%q) error = %v", tt.rawURL, err)
			continue
		}
		got := u.RequestURI()
		if got != tt.want {
			t.Errorf("URL(%q).RequestURI() = %q, want %q", tt.rawURL, got, tt.want)
		}
	}
}

func TestURLResolveReference(t *testing.T) {
	base, err := url.Parse("http://example.com/a/b")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	ref, err := url.Parse("../c")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	resolved := base.ResolveReference(ref)
	want := "http://example.com/c"
	if resolved.String() != want {
		t.Errorf("ResolveReference() = %q, want %q", resolved.String(), want)
	}
}

func TestURLEscapedPath(t *testing.T) {
	u, err := url.Parse("http://example.com/a b")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	got := u.EscapedPath()
	want := "/a%20b"
	if got != want {
		t.Errorf("EscapedPath() = %q, want %q", got, want)
	}
}

func TestURLEscapedFragment(t *testing.T) {
	u, err := url.Parse("http://example.com#a b")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	got := u.EscapedFragment()
	want := "a%20b"
	if got != want {
		t.Errorf("EscapedFragment() = %q, want %q", got, want)
	}
}

func TestURLRedacted(t *testing.T) {
	tests := []struct {
		rawURL string
		want   string
	}{
		{"http://user:pass@example.com/path", "http://user:xxxxx@example.com/path"},
		{"http://example.com/path", "http://example.com/path"},
		{"http://user@example.com/path", "http://user@example.com/path"},
	}
	for _, tt := range tests {
		u, err := url.Parse(tt.rawURL)
		if err != nil {
			t.Errorf("Parse(%q) error = %v", tt.rawURL, err)
			continue
		}
		got := u.Redacted()
		if got != tt.want {
			t.Errorf("URL(%q).Redacted() = %q, want %q", tt.rawURL, got, tt.want)
		}
	}
}

func TestURLMarshalBinary(t *testing.T) {
	u, err := url.Parse("http://example.com/path")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	data, err := u.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary error: %v", err)
	}
	if len(data) == 0 {
		t.Error("MarshalBinary returned empty data")
	}
}

func TestURLUnmarshalBinary(t *testing.T) {
	original, err := url.Parse("http://example.com/path")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	data, err := original.MarshalBinary()
	if err != nil {
		t.Fatalf("MarshalBinary error: %v", err)
	}
	var u url.URL
	err = u.UnmarshalBinary(data)
	if err != nil {
		t.Fatalf("UnmarshalBinary error: %v", err)
	}
	if u.String() != original.String() {
		t.Errorf("UnmarshalBinary result = %q, want %q", u.String(), original.String())
	}
}

func TestURLAppendBinary(t *testing.T) {
	u, err := url.Parse("http://example.com/path")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	b := []byte("prefix")
	result, err := u.AppendBinary(b)
	if err != nil {
		t.Fatalf("AppendBinary error: %v", err)
	}
	if len(result) <= len(b) {
		t.Error("AppendBinary didn't append data")
	}
	if string(result[:len(b)]) != "prefix" {
		t.Error("AppendBinary corrupted prefix")
	}
}

func TestURLParse(t *testing.T) {
	base, err := url.Parse("http://example.com/a/b")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	ref, err := base.Parse("../c")
	if err != nil {
		t.Fatalf("URL.Parse error: %v", err)
	}
	want := "http://example.com/c"
	if ref.String() != want {
		t.Errorf("URL.Parse() = %q, want %q", ref.String(), want)
	}
}

func TestURLJoinPath(t *testing.T) {
	base, err := url.Parse("http://example.com/a")
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}
	result := base.JoinPath("b", "c")
	want := "http://example.com/a/b/c"
	if result.String() != want {
		t.Errorf("JoinPath() = %q, want %q", result.String(), want)
	}
}

func TestJoinPath(t *testing.T) {
	tests := []struct {
		base    string
		elems   []string
		want    string
		wantErr bool
	}{
		{"http://example.com", []string{"a", "b"}, "http://example.com/a/b", false},
		{"http://example.com/", []string{"a"}, "http://example.com/a", false},
		{"http://example.com/x", []string{"..", "a"}, "http://example.com/a", false},
	}
	for _, tt := range tests {
		got, err := url.JoinPath(tt.base, tt.elems...)
		if (err != nil) != tt.wantErr {
			t.Errorf("JoinPath(%q, %v) error = %v, wantErr %v", tt.base, tt.elems, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && got != tt.want {
			t.Errorf("JoinPath(%q, %v) = %q, want %q", tt.base, tt.elems, got, tt.want)
		}
	}
}

func TestUser(t *testing.T) {
	u := url.User("username")
	if u == nil {
		t.Fatal("User returned nil")
	}
	if u.Username() != "username" {
		t.Errorf("Username() = %q, want %q", u.Username(), "username")
	}
	if _, ok := u.Password(); ok {
		t.Error("Password() returned true, want false")
	}
}

func TestUserPassword(t *testing.T) {
	u := url.UserPassword("username", "password")
	if u == nil {
		t.Fatal("UserPassword returned nil")
	}
	if u.Username() != "username" {
		t.Errorf("Username() = %q, want %q", u.Username(), "username")
	}
	pass, ok := u.Password()
	if !ok {
		t.Error("Password() returned false, want true")
	}
	if pass != "password" {
		t.Errorf("Password() = %q, want %q", pass, "password")
	}
}

func TestUserinfoString(t *testing.T) {
	u := url.UserPassword("user", "pass")
	got := u.String()
	want := "user:pass"
	if got != want {
		t.Errorf("Userinfo.String() = %q, want %q", got, want)
	}
}

func TestParseQuery(t *testing.T) {
	tests := []struct {
		query   string
		want    url.Values
		wantErr bool
	}{
		{"a=1&b=2", url.Values{"a": []string{"1"}, "b": []string{"2"}}, false},
		{"a=1&a=2", url.Values{"a": []string{"1", "2"}}, false},
		{"", url.Values{}, false},
		{"%", nil, true},
	}
	for _, tt := range tests {
		got, err := url.ParseQuery(tt.query)
		if (err != nil) != tt.wantErr {
			t.Errorf("ParseQuery(%q) error = %v, wantErr %v", tt.query, err, tt.wantErr)
			continue
		}
		if !tt.wantErr && !reflect.DeepEqual(got, tt.want) {
			t.Errorf("ParseQuery(%q) = %v, want %v", tt.query, got, tt.want)
		}
	}
}

func TestValuesGet(t *testing.T) {
	v := url.Values{"a": []string{"1", "2"}}
	if got := v.Get("a"); got != "1" {
		t.Errorf("Get(\"a\") = %q, want %q", got, "1")
	}
	if got := v.Get("b"); got != "" {
		t.Errorf("Get(\"b\") = %q, want %q", got, "")
	}
}

func TestValuesSet(t *testing.T) {
	v := url.Values{}
	v.Set("a", "1")
	if got := v.Get("a"); got != "1" {
		t.Errorf("After Set, Get(\"a\") = %q, want %q", got, "1")
	}
	v.Set("a", "2")
	if got := v.Get("a"); got != "2" {
		t.Errorf("After second Set, Get(\"a\") = %q, want %q", got, "2")
	}
	if len(v["a"]) != 1 {
		t.Errorf("Set should replace, got %d values", len(v["a"]))
	}
}

func TestValuesAdd(t *testing.T) {
	v := url.Values{}
	v.Add("a", "1")
	v.Add("a", "2")
	vals := v["a"]
	if len(vals) != 2 || vals[0] != "1" || vals[1] != "2" {
		t.Errorf("After Add, got %v, want [\"1\", \"2\"]", vals)
	}
}

func TestValuesDel(t *testing.T) {
	v := url.Values{"a": []string{"1"}, "b": []string{"2"}}
	v.Del("a")
	if v.Get("a") != "" {
		t.Error("After Del, key still exists")
	}
	if v.Get("b") != "2" {
		t.Error("Del affected wrong key")
	}
}

func TestValuesHas(t *testing.T) {
	v := url.Values{"a": []string{"1"}}
	if !v.Has("a") {
		t.Error("Has(\"a\") = false, want true")
	}
	if v.Has("b") {
		t.Error("Has(\"b\") = true, want false")
	}
}

func TestValuesEncode(t *testing.T) {
	v := url.Values{
		"a": []string{"1", "2"},
		"b": []string{"3"},
	}
	encoded := v.Encode()
	decoded, err := url.ParseQuery(encoded)
	if err != nil {
		t.Fatalf("ParseQuery error: %v", err)
	}
	if !reflect.DeepEqual(decoded, v) {
		t.Errorf("Encode/Decode round-trip failed: got %v, want %v", decoded, v)
	}
}

func TestEscapeError(t *testing.T) {
	var e url.EscapeError = "test%"
	got := e.Error()
	if got == "" {
		t.Error("EscapeError.Error() returned empty string")
	}
}

func TestInvalidHostError(t *testing.T) {
	var e url.InvalidHostError = "[invalid"
	got := e.Error()
	if got == "" {
		t.Error("InvalidHostError.Error() returned empty string")
	}
}

func TestErrorType(t *testing.T) {
	e := &url.Error{
		Op:  "parse",
		URL: "http://[::1:80/",
		Err: url.InvalidHostError("[::1:80"),
	}
	got := e.Error()
	if got == "" {
		t.Error("Error.Error() returned empty string")
	}
	if e.Unwrap() == nil {
		t.Error("Error.Unwrap() returned nil")
	}
}

func TestErrorTimeout(t *testing.T) {
	e := &url.Error{Op: "test"}
	if e.Timeout() {
		t.Error("Error.Timeout() = true for non-timeout error")
	}
}

func TestErrorTemporary(t *testing.T) {
	e := &url.Error{Op: "test"}
	if e.Temporary() {
		t.Error("Error.Temporary() = true for non-temporary error")
	}
}
