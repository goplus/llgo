package build

import (
	"fmt"
	"github.com/xgo-dev/llgo/internal/packages"
	llssa "github.com/xgo-dev/llgo/ssa"
	"go/ast"
)

func validateVectorMaps(prog llssa.Program, groups ...[]*packages.Package) error {
	seen := make(map[*packages.Package]bool)
	validate := prog.VectorMapValidator()
	var firstErr error
	for _, roots := range groups {
		packages.Visit(roots, nil, func(pkg *packages.Package) {
			if firstErr != nil || seen[pkg] || pkg.TypesInfo == nil || pkg.IllTyped {
				return
			}
			seen[pkg] = true
			// Walk source order for a stable, positioned diagnostic, including
			// unused type declarations and instantiated generic containers.
			for _, file := range pkg.Syntax {
				ast.Inspect(file, func(node ast.Node) bool {
					if firstErr != nil {
						return false
					}
					expr, ok := node.(ast.Expr)
					if !ok {
						return true
					}
					if typ := pkg.TypesInfo.TypeOf(expr); typ != nil {
						if err := validate(typ); err != nil {
							firstErr = fmt.Errorf("%s: %w", pkg.Fset.Position(expr.Pos()), err)
							return false
						}
					}
					return true
				})
			}
		})
	}
	return firstErr
}
