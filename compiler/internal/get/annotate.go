package get

import (
	"fmt"
	"os"
	"slices"
	"strings"

	"github.com/goplus/llpkgstore/config"
	"golang.org/x/mod/modfile"
	"golang.org/x/mod/module"
)

// Add annotation of original version to go.mod by appending comment
// to the module path.
func AnnotateModFile(targetModFilePath string, module module.Version, pkg config.PackageConfig) error {
	annotation := fmt.Sprintf("%s %s", pkg.Name, pkg.Version)

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
			if len(req.Syntax.Comments.Suffix) == 0 {
				token := fmt.Sprintf("// %s", annotation)
				req.Syntax.Comments.Suffix = append(req.Syntax.Comments.Suffix,
					modfile.Comment{
						Suffix: true,
						Token:  token,
					})
			} else {
				comment := req.Syntax.Comments.Suffix[0].Token
				commentParts := strings.Split(comment, "; ")

				// If contains, skip
				switch {
				case len(commentParts) == 1:
					if comment == "// "+annotation {
						continue
					}
				case len(commentParts) > 1:
					if slices.Contains(commentParts, annotation) || slices.Contains(commentParts, "// "+annotation) {
						continue
					}
				}

				token := fmt.Sprintf("%s; %s", comment, annotation)
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
