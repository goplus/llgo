package cookiejar_test

import (
	"net/http"
	"net/http/cookiejar"
	"net/url"
	"strings"
	"testing"
)

type dummyPSL struct{}

func (dummyPSL) PublicSuffix(domain string) string {
	if strings.HasSuffix(domain, ".co.uk") {
		return "co.uk"
	}
	if i := strings.LastIndexByte(domain, '.'); i >= 0 {
		return domain[i+1:]
	}
	return ""
}

func (dummyPSL) String() string { return "dummy-psl" }

func mustURL(t *testing.T, s string) *url.URL {
	t.Helper()
	u, err := url.Parse(s)
	if err != nil {
		t.Fatalf("Parse(%q) failed: %v", s, err)
	}
	return u
}

func TestNewSetCookiesAndCookies(t *testing.T) {
	var _ cookiejar.PublicSuffixList = dummyPSL{}

	jar, err := cookiejar.New(nil)
	if err != nil {
		t.Fatalf("New(nil) failed: %v", err)
	}
	var _ http.CookieJar = jar

	opts := &cookiejar.Options{PublicSuffixList: dummyPSL{}}
	jar2, err := cookiejar.New(opts)
	if err != nil {
		t.Fatalf("New(opts) failed: %v", err)
	}

	u := mustURL(t, "https://sub.example.com/path")
	jar2.SetCookies(u, []*http.Cookie{
		{Name: "sid", Value: "abc", Path: "/"},
	})
	got := jar2.Cookies(u)
	if len(got) != 1 {
		t.Fatalf("Cookies len=%d, want 1", len(got))
	}
	if got[0].Name != "sid" || got[0].Value != "abc" {
		t.Fatalf("Cookies[0] = %+v", got[0])
	}

	// Non-HTTP(S) schemes should be ignored by SetCookies and Cookies.
	ftpURL := mustURL(t, "ftp://sub.example.com/path")
	jar.SetCookies(ftpURL, []*http.Cookie{{Name: "x", Value: "1"}})
	if c := jar.Cookies(ftpURL); len(c) != 0 {
		t.Fatalf("Cookies(ftp) len=%d, want 0", len(c))
	}
}
