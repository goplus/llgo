package get

import (
	"fmt"
	"os"
	"strings"

	"github.com/goplus/llpkgstore/config"
	"golang.org/x/mod/modfile"
	"golang.org/x/mod/module"
)

const AnnotationPrefix = "(llpkg)"

type Annotation struct {
	InstallerName, PackageName, PackageVersion string
}

func AnnotationFromString(s string) Annotation {
	parts := strings.Split(s, ":")
	installerName := parts[0]

	parts = strings.Split(parts[1], "/")
	packageName := parts[0]
	packageVersion := parts[1]

	return Annotation{
		InstallerName:  installerName,
		PackageName:    packageName,
		PackageVersion: packageVersion,
	}
}

func (a Annotation) String() string {
	return fmt.Sprintf("%s%s:%s/%s", AnnotationPrefix, a.InstallerName, a.PackageName, a.PackageVersion)
}

// Add annotation of original version to go.mod by appending comment
// to the module path.
//
// Warning: Any old comments, except the "indirect" one, will be lost.
func AnnotateModFile(targetModFilePath string, module module.Version, pkg config.UpstreamConfig) error {
	annotation := Annotation{
		InstallerName:  pkg.Installer.Name,
		PackageName:    pkg.Package.Name,
		PackageVersion: pkg.Package.Version,
	}

	modFileData, err := os.ReadFile(targetModFilePath)
	if err != nil {
		return fmt.Errorf("failed to read go.mod: %v", err)
	}

	modFile, err := modfile.Parse(targetModFilePath, modFileData, nil)
	if err != nil {
		return fmt.Errorf("failed to parse go.mod: %v", err)
	}

	// Add annotation
	found := false
	for _, req := range modFile.Require {
		if req.Mod == module {
			found = true
			var token string

			if req.Indirect {
				token = fmt.Sprintf("// indirect; %s", annotation.String())
			} else {
				token = fmt.Sprintf("// %s", annotation.String())
			}

			if len(req.Syntax.Comments.Suffix) == 0 {
				req.Syntax.Comments.Suffix = append(req.Syntax.Comments.Suffix,
					modfile.Comment{
						Suffix: true,
						Token:  token,
					})
			} else {
				req.Syntax.Comments.Suffix[0].Token = token
			}
		}
	}
	if !found {
		return fmt.Errorf("failed to find module %s in go.mod", module.Path)
	}

	modFile.Cleanup()
	modFileData, err = modFile.Format()
	if err != nil {
		return fmt.Errorf("failed to format go.mod: %v", err)
	}
	err = os.WriteFile(targetModFilePath, modFileData, 0644)
	if err != nil {
		return fmt.Errorf("failed to write go.mod: %v", err)
	}

	return nil
}
