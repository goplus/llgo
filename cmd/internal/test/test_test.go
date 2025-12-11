//go:build !llgo
// +build !llgo

package test

import (
	"reflect"
	"testing"
)

func TestSplitArgsAt(t *testing.T) {
	tests := []struct {
		name       string
		args       []string
		separator  string
		wantBefore []string
		wantAfter  []string
	}{
		{
			name:       "separator at end",
			args:       []string{"pkg1", "pkg2", "-args"},
			separator:  "-args",
			wantBefore: []string{"pkg1", "pkg2"},
			wantAfter:  []string{},
		},
		{
			name:       "separator in middle",
			args:       []string{"pkg1", "-args", "-v", "-run", "TestFoo"},
			separator:  "-args",
			wantBefore: []string{"pkg1"},
			wantAfter:  []string{"-v", "-run", "TestFoo"},
		},
		{
			name:       "separator at beginning",
			args:       []string{"-args", "-v", "-run", "TestFoo"},
			separator:  "-args",
			wantBefore: []string{},
			wantAfter:  []string{"-v", "-run", "TestFoo"},
		},
		{
			name:       "no separator",
			args:       []string{"pkg1", "pkg2", "-v"},
			separator:  "-args",
			wantBefore: []string{"pkg1", "pkg2", "-v"},
			wantAfter:  nil,
		},
		{
			name:       "empty args",
			args:       []string{},
			separator:  "-args",
			wantBefore: []string{},
			wantAfter:  nil,
		},
		{
			name:       "multiple occurrences - splits at first",
			args:       []string{"pkg1", "-args", "-v", "-args", "extra"},
			separator:  "-args",
			wantBefore: []string{"pkg1"},
			wantAfter:  []string{"-v", "-args", "extra"},
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			gotBefore, gotAfter := splitArgsAt(tt.args, tt.separator)

			if !reflect.DeepEqual(gotBefore, tt.wantBefore) {
				t.Errorf("splitArgsAt() gotBefore = %v, want %v", gotBefore, tt.wantBefore)
			}

			if !reflect.DeepEqual(gotAfter, tt.wantAfter) {
				t.Errorf("splitArgsAt() gotAfter = %v, want %v", gotAfter, tt.wantAfter)
			}
		})
	}
}
