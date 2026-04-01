package filecheck

import (
	"strings"
	"testing"
)

func TestMatchSupportsLabelRegexAndNext(t *testing.T) {
	spec := `// LITTEST
package main

// CHECK-LABEL: func main
func main() {
	// CHECK: value {{[0-9]+}}
	// CHECK-NEXT: done
}
`
	input := `
func main
value 42
done
`
	if err := Match("test.go", spec, input); err != nil {
		t.Fatal(err)
	}
}

func TestMatchSupportsEmptyLine(t *testing.T) {
	spec := `// LITTEST
package main

func main() {
	// CHECK: value 42
	// CHECK-EMPTY:
	// CHECK: done
}
`
	input := `
value 42

done
`
	if err := Match("test.go", spec, input); err != nil {
		t.Fatal(err)
	}
}

func TestMatchSupportsWholeLineChecks(t *testing.T) {
	spec := `// LITTEST
package main

// CHECK-LINE: begin
// CHECK-LINE: end
`
	input := `
begin
middle
end
`
	if err := Match("test.go", spec, input); err != nil {
		t.Fatal(err)
	}
}

func TestCheckLabelRequiresWholeLineMatch(t *testing.T) {
	spec := `// LITTEST
package main

// CHECK-LABEL: begin
`
	input := `
prefix begin
`
	err := Match("test.go", spec, input)
	if err == nil {
		t.Fatal("Match succeeded unexpectedly")
	}
}

func TestMatchSupportsSameAndNot(t *testing.T) {
	spec := `// LITTEST
package main

func main() {
	// CHECK: value
	// CHECK-SAME: 42
	// CHECK-NOT: forbidden
	// CHECK: done
}
`
	input := `
value 42
done
`
	if err := Match("test.go", spec, input); err != nil {
		t.Fatal(err)
	}
}

func TestMatchRejectsForbiddenPattern(t *testing.T) {
	spec := `// LITTEST
package main

func main() {
	// CHECK: ok
	// CHECK-NOT: panic
	// CHECK: done
}
`
	input := `
ok
panic
done
`
	err := Match("test.go", spec, input)
	if err == nil {
		t.Fatal("Match succeeded unexpectedly")
	}
	if !strings.Contains(err.Error(), "forbidden text") {
		t.Fatalf("unexpected error: %v", err)
	}
}

func TestMatchDoesNotCarryCheckNotAcrossLabels(t *testing.T) {
	spec := `// LITTEST
package main

// CHECK-LABEL: first
// CHECK: ok
// CHECK-NOT: panic
// CHECK-LABEL: second
// CHECK: panic
`
	input := `
first
ok
second
panic
`
	if err := Match("test.go", spec, input); err != nil {
		t.Fatal(err)
	}
}

func TestHasDirectives(t *testing.T) {
	if !HasDirectives("// CHECK: value\n") {
		t.Fatal("HasDirectives returned false")
	}
	if HasDirectives("value\n") {
		t.Fatal("HasDirectives returned true unexpectedly")
	}
}

func TestHasDirectivesIgnoresNonSlashSlashComments(t *testing.T) {
	if HasDirectives("; CHECK: value\n") {
		t.Fatal("HasDirectives returned true unexpectedly")
	}
}

func TestMatchSupportsCRLF(t *testing.T) {
	spec := "// LITTEST\r\npackage main\r\n\r\n// CHECK-LABEL: begin\r\n// CHECK-NEXT: done\r\n"
	input := "begin\r\ndone\r\n"
	if err := Match("test.go", spec, input); err != nil {
		t.Fatal(err)
	}
}
