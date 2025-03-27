package get

import (
	"bytes"
	"os"
	"testing"

	"github.com/goplus/llpkgstore/config"
	"golang.org/x/mod/module"
)

func TestAnnotateModFile(t *testing.T) {
	testCases := []struct {
		name       string
		modContent string
		module     module.Version
		upstream   config.UpstreamConfig
		wantErr    bool
		expected   string
	}{
		{
			name: "new_case",
			modContent: `module example.com/test

require github.com/test/module v1.0.0
`,
			module: module.Version{Path: "github.com/test/module", Version: "v1.0.0"},
			upstream: config.UpstreamConfig{
				Installer: config.InstallerConfig{Name: "ghrelease"},
				Package: config.PackageConfig{
					Name:    "mypkg",
					Version: "1.2.3",
				},
			},
			expected: `module example.com/test

require github.com/test/module v1.0.0 // (llpkg)ghrelease:mypkg/1.2.3
`,
		},
		{
			name: "append_case",
			modContent: `module example.com/test

require github.com/test/module v1.0.0 // any_comments
`,
			module: module.Version{Path: "github.com/test/module", Version: "v1.0.0"},
			upstream: config.UpstreamConfig{
				Installer: config.InstallerConfig{Name: "ghrelease"},
				Package: config.PackageConfig{
					Name:    "mypkg",
					Version: "1.2.3",
				},
			},
			expected: `module example.com/test

require github.com/test/module v1.0.0 // (llpkg)ghrelease:mypkg/1.2.3
`,
		},
		{
			name: "indirect_case",
			modContent: `module example.com/test

require github.com/test/module v1.0.0 // indirect; any_comments
`,
			module: module.Version{Path: "github.com/test/module", Version: "v1.0.0"},
			upstream: config.UpstreamConfig{
				Installer: config.InstallerConfig{Name: "ghrelease"},
				Package: config.PackageConfig{
					Name:    "mypkg",
					Version: "1.2.3",
				},
			},
			expected: `module example.com/test

require github.com/test/module v1.0.0 // indirect; (llpkg)ghrelease:mypkg/1.2.3
`,
		},
		{
			name: "already_exists_case",
			modContent: `module example.com/test

require github.com/test/module v1.0.0 // (llpkg)ghrelease:mypkg/1.2.3
`,
			module: module.Version{Path: "github.com/test/module", Version: "v1.0.0"},
			upstream: config.UpstreamConfig{
				Installer: config.InstallerConfig{Name: "ghrelease"},
				Package: config.PackageConfig{
					Name:    "mypkg",
					Version: "1.2.3",
				},
			},
			expected: `module example.com/test

require github.com/test/module v1.0.0 // (llpkg)ghrelease:mypkg/1.2.3
`,
		},
		{
			name: "module_not_found",
			modContent: `module example.com/test

require github.com/other/module v1.0.0
`,
			module:  module.Version{Path: "github.com/test/module", Version: "v1.0.0"},
			wantErr: true,
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			tmpDir, err := os.MkdirTemp("", "mod-test-")
			if err != nil {
				t.Fatal(err)
			}
			defer os.RemoveAll(tmpDir)

			modPath := tmpDir + "/go.mod"
			if err := os.WriteFile(modPath, []byte(tc.modContent), 0644); err != nil {
				t.Fatal(err)
			}

			err = AnnotateModFile(modPath, tc.module, tc.upstream)
			if tc.wantErr {
				if err == nil {
					t.Errorf("Expected error but got none")
				}
				return
			}

			if err != nil {
				t.Errorf("Unexpected error: %v", err)
				return
			}

			result, err := os.ReadFile(modPath)
			if err != nil {
				t.Fatal(err)
			}

			if !bytes.Equal(result, []byte(tc.expected)) {
				t.Errorf("Unexpected content:\nGot:\n%s\nExpected:\n%s",
					string(result), tc.expected)
			}
		})
	}
}
