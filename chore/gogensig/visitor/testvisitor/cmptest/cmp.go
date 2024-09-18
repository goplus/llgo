package cmptest

import (
	"strings"

	"github.com/google/go-cmp/cmp"
)

func EqualStringIgnoreSpace(s1 string, s2 string) (bool, string) {
	s1 = strings.TrimSpace(s1)
	s2 = strings.TrimSpace(s2)
	if !cmp.Equal(s1, s2) {
		return false, cmp.Diff(s1, s2)
	}
	return true, ""
}
