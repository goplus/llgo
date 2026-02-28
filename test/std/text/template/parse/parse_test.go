package parse_test

import (
	"testing"
	"text/template/parse"
)

func assertNodeStringCopyType(t *testing.T, node parse.Node) parse.Node {
	t.Helper()
	if node == nil {
		t.Fatal("node is nil")
	}
	nodeStr := node.String()
	if nodeStr == "" {
		t.Fatalf("%T.String() returned empty", node)
	}
	if node.Type() != node.Type().Type() {
		t.Fatalf("%T.Type() should be stable", node)
	}
	copied := node.Copy()
	if copied == nil {
		t.Fatalf("%T.Copy() returned nil", node)
	}
	if copied.Type() != node.Type() {
		t.Fatalf("%T.Copy() changed node type: got %v, want %v", node, copied.Type(), node.Type())
	}
	if copied.String() != nodeStr {
		t.Fatalf("%T.Copy().String() mismatch: got %q, want %q", node, copied.String(), nodeStr)
	}
	return copied
}

// Test basic Parse function
func TestParse(t *testing.T) {
	trees, err := parse.Parse("test", "{{.Name}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}
	if len(trees) == 0 {
		t.Fatal("Parse returned no trees")
	}
	if trees["test"] == nil {
		t.Error("Parse should return tree named 'test'")
	}
}

// Test New function
func TestNew(t *testing.T) {
	tree := parse.New("test")
	if tree == nil {
		t.Fatal("New returned nil")
	}
}

// Test Tree.Parse
func TestTreeParse(t *testing.T) {
	tree := parse.New("test")
	treeSet := make(map[string]*parse.Tree)
	_, err := tree.Parse("{{.Name}}", "{{", "}}", treeSet)
	if err != nil {
		t.Fatalf("Tree.Parse failed: %v", err)
	}
}

// Test Tree.Copy
func TestTreeCopy(t *testing.T) {
	tree := parse.New("test")
	treeSet := make(map[string]*parse.Tree)
	tree.Parse("{{.Name}}", "{{", "}}", treeSet)

	copied := tree.Copy()
	if copied == nil {
		t.Fatal("Tree.Copy returned nil")
	}
}

// Test Tree.ErrorContext
func TestTreeErrorContext(t *testing.T) {
	tree := parse.New("test")
	treeSet := make(map[string]*parse.Tree)
	tree.Parse("{{.Name}}", "{{", "}}", treeSet)

	if tree.Root != nil && len(tree.Root.Nodes) > 0 {
		location, context := tree.ErrorContext(tree.Root.Nodes[0])
		if location == "" && context == "" {
			t.Fatal("ErrorContext returned empty location and context")
		}
	}
}

// Test IsEmptyTree
func TestIsEmptyTree(t *testing.T) {
	tree := parse.New("test")
	treeSet := make(map[string]*parse.Tree)
	tree.Parse("", "{{", "}}", treeSet)

	if tree.Root != nil {
		isEmpty := parse.IsEmptyTree(tree.Root)
		if !isEmpty {
			t.Error("Empty tree should be empty")
		}
	}
}

// Test NodeType constants
func TestNodeType(t *testing.T) {
	types := []parse.NodeType{
		parse.NodeText,
		parse.NodeAction,
		parse.NodeBool,
		parse.NodeChain,
		parse.NodeCommand,
		parse.NodeDot,
		parse.NodeField,
		parse.NodeIdentifier,
		parse.NodeIf,
		parse.NodeList,
		parse.NodeNil,
		parse.NodeNumber,
		parse.NodePipe,
		parse.NodeRange,
		parse.NodeString,
		parse.NodeTemplate,
		parse.NodeVariable,
		parse.NodeWith,
		parse.NodeComment,
		parse.NodeBreak,
		parse.NodeContinue,
	}

	for _, typ := range types {
		if typ.Type() != typ {
			t.Errorf("NodeType.Type() should return self")
		}
	}
}

// Test Pos.Position
func TestPosPosition(t *testing.T) {
	var p parse.Pos = 42
	if p.Position() != p {
		t.Error("Pos.Position should return self")
	}
}

// Test Mode constants
func TestModeConstants(t *testing.T) {
	_ = parse.ParseComments
	_ = parse.SkipFuncCheck
}

// Test NewIdentifier
func TestNewIdentifier(t *testing.T) {
	ident := parse.NewIdentifier("test")
	if ident == nil {
		t.Fatal("NewIdentifier returned nil")
	}
	if ident.Ident != "test" {
		t.Errorf("Identifier should be 'test', got %q", ident.Ident)
	}
}

// Test IdentifierNode methods
func TestIdentifierNode(t *testing.T) {
	ident := parse.NewIdentifier("test")

	// Test String
	str := ident.String()
	if str == "" {
		t.Error("IdentifierNode.String should not be empty")
	}

	// Test Copy
	copied := ident.Copy()
	if copied == nil {
		t.Fatal("IdentifierNode.Copy returned nil")
	}

	// Test SetPos
	ident2 := ident.SetPos(10)
	if ident2 == nil {
		t.Error("SetPos should return self")
	}

	// Test SetTree
	tree := parse.New("test")
	ident3 := ident.SetTree(tree)
	if ident3 == nil {
		t.Error("SetTree should return self")
	}
}

// Test various node types with a parsed template
func TestNodeTypes(t *testing.T) {
	// Test with a template that exercises different node types
	template := `{{/* comment */}}{{if .Cond}}{{.Field}}{{end}}{{range .Items}}{{.}}{{break}}{{continue}}{{end}}{{with .Obj}}{{.}}{{end}}`

	trees, err := parse.Parse("test", template, "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree == nil || tree.Root == nil {
		t.Fatal("Parse returned invalid tree")
	}

	// Walk through nodes to exercise Copy and String methods
	var walkNodes func([]parse.Node)
	walkNodes = func(nodes []parse.Node) {
		for _, node := range nodes {
			assertNodeStringCopyType(t, node)

			// Exercise specific node types
			switch n := node.(type) {
			case *parse.ListNode:
				copied := n.CopyList()
				if copied == nil {
					t.Fatal("ListNode.CopyList returned nil")
				}
				if copied.String() != n.String() {
					t.Fatalf("ListNode.CopyList().String() mismatch: got %q, want %q", copied.String(), n.String())
				}
				if n.Nodes != nil {
					walkNodes(n.Nodes)
				}
			case *parse.ActionNode:
				if n.Pipe != nil {
					walkNodes([]parse.Node{n.Pipe})
				}
			case *parse.IfNode:
				if n.BranchNode.Pipe != nil {
					walkNodes([]parse.Node{n.BranchNode.Pipe})
				}
				if n.BranchNode.List != nil {
					walkNodes([]parse.Node{n.BranchNode.List})
				}
				if n.BranchNode.ElseList != nil {
					walkNodes([]parse.Node{n.BranchNode.ElseList})
				}
			case *parse.RangeNode:
				if n.BranchNode.Pipe != nil {
					walkNodes([]parse.Node{n.BranchNode.Pipe})
				}
				if n.BranchNode.List != nil {
					walkNodes([]parse.Node{n.BranchNode.List})
				}
			case *parse.WithNode:
				if n.BranchNode.Pipe != nil {
					walkNodes([]parse.Node{n.BranchNode.Pipe})
				}
				if n.BranchNode.List != nil {
					walkNodes([]parse.Node{n.BranchNode.List})
				}
			case *parse.PipeNode:
				copied := n.CopyPipe()
				if copied == nil {
					t.Fatal("PipeNode.CopyPipe returned nil")
				}
				if copied.String() != n.String() {
					t.Fatalf("PipeNode.CopyPipe().String() mismatch: got %q, want %q", copied.String(), n.String())
				}
				if n.Decl != nil {
					for _, v := range n.Decl {
						walkNodes([]parse.Node{v})
					}
				}
				if n.Cmds != nil {
					for _, cmd := range n.Cmds {
						walkNodes([]parse.Node{cmd})
					}
				}
			case *parse.CommandNode:
				if n.Args != nil {
					walkNodes(n.Args)
				}
			case *parse.ChainNode:
				n.Add("field")
			}
		}
	}

	walkNodes(tree.Root.Nodes)
}

// Test DotNode
func TestDotNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{.}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the DotNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if dot, ok := action.Pipe.Cmds[0].Args[0].(*parse.DotNode); ok {
						if dot.Type() != parse.NodeDot {
							t.Fatalf("DotNode.Type mismatch: got %v", dot.Type())
						}
						dotStr := dot.String()
						if dotStr == "" {
							t.Fatal("DotNode.String returned empty")
						}
						copiedDot, ok := dot.Copy().(*parse.DotNode)
						if !ok || copiedDot == nil {
							t.Fatal("DotNode.Copy returned invalid copy")
						}
						if copiedDot.String() != dotStr {
							t.Fatalf("DotNode.Copy().String() mismatch: got %q, want %q", copiedDot.String(), dotStr)
						}
					}
				}
			}
		}
	}
}

// Test NilNode
func TestNilNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{nil}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the NilNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if nilNode, ok := action.Pipe.Cmds[0].Args[0].(*parse.NilNode); ok {
						if nilNode.Type() != parse.NodeNil {
							t.Fatalf("NilNode.Type mismatch: got %v", nilNode.Type())
						}
						nilStr := nilNode.String()
						if nilStr == "" {
							t.Fatal("NilNode.String returned empty")
						}
						copiedNil, ok := nilNode.Copy().(*parse.NilNode)
						if !ok || copiedNil == nil {
							t.Fatal("NilNode.Copy returned invalid copy")
						}
						if copiedNil.String() != nilStr {
							t.Fatalf("NilNode.Copy().String() mismatch: got %q, want %q", copiedNil.String(), nilStr)
						}
					}
				}
			}
		}
	}
}

// Test BoolNode
func TestBoolNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{true}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the BoolNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if boolNode, ok := action.Pipe.Cmds[0].Args[0].(*parse.BoolNode); ok {
						boolStr := boolNode.String()
						if boolStr != "true" {
							t.Fatalf("BoolNode.String mismatch: got %q, want %q", boolStr, "true")
						}
						copiedBool, ok := boolNode.Copy().(*parse.BoolNode)
						if !ok || copiedBool == nil {
							t.Fatal("BoolNode.Copy returned invalid copy")
						}
						if copiedBool.String() != boolStr {
							t.Fatalf("BoolNode.Copy().String() mismatch: got %q, want %q", copiedBool.String(), boolStr)
						}
					}
				}
			}
		}
	}
}

// Test NumberNode
func TestNumberNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{42}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the NumberNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if numNode, ok := action.Pipe.Cmds[0].Args[0].(*parse.NumberNode); ok {
						numStr := numNode.String()
						if numStr == "" {
							t.Fatal("NumberNode.String returned empty")
						}
						copiedNum, ok := numNode.Copy().(*parse.NumberNode)
						if !ok || copiedNum == nil {
							t.Fatal("NumberNode.Copy returned invalid copy")
						}
						if copiedNum.String() != numStr {
							t.Fatalf("NumberNode.Copy().String() mismatch: got %q, want %q", copiedNum.String(), numStr)
						}
					}
				}
			}
		}
	}
}

// Test StringNode
func TestStringNode(t *testing.T) {
	trees, err := parse.Parse("test", `{{"hello"}}`, "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the StringNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if strNode, ok := action.Pipe.Cmds[0].Args[0].(*parse.StringNode); ok {
						strVal := strNode.String()
						if strVal != "\"hello\"" {
							t.Fatalf("StringNode.String mismatch: got %q, want %q", strVal, "\"hello\"")
						}
						copiedStr, ok := strNode.Copy().(*parse.StringNode)
						if !ok || copiedStr == nil {
							t.Fatal("StringNode.Copy returned invalid copy")
						}
						if copiedStr.String() != strVal {
							t.Fatalf("StringNode.Copy().String() mismatch: got %q, want %q", copiedStr.String(), strVal)
						}
					}
				}
			}
		}
	}
}

// Test VariableNode
func TestVariableNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{$x := 1}}{{$x}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find a VariableNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 1 {
		if action, ok := tree.Root.Nodes[1].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if varNode, ok := action.Pipe.Cmds[0].Args[0].(*parse.VariableNode); ok {
						varStr := varNode.String()
						if varStr != "$x" {
							t.Fatalf("VariableNode.String mismatch: got %q, want %q", varStr, "$x")
						}
						copiedVar, ok := varNode.Copy().(*parse.VariableNode)
						if !ok || copiedVar == nil {
							t.Fatal("VariableNode.Copy returned invalid copy")
						}
						if copiedVar.String() != varStr {
							t.Fatalf("VariableNode.Copy().String() mismatch: got %q, want %q", copiedVar.String(), varStr)
						}
					}
				}
			}
		}
	}
}

// Test FieldNode
func TestFieldNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{.Field}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the FieldNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if fieldNode, ok := action.Pipe.Cmds[0].Args[0].(*parse.FieldNode); ok {
						fieldStr := fieldNode.String()
						if fieldStr != ".Field" {
							t.Fatalf("FieldNode.String mismatch: got %q, want %q", fieldStr, ".Field")
						}
						copiedField, ok := fieldNode.Copy().(*parse.FieldNode)
						if !ok || copiedField == nil {
							t.Fatal("FieldNode.Copy returned invalid copy")
						}
						if copiedField.String() != fieldStr {
							t.Fatalf("FieldNode.Copy().String() mismatch: got %q, want %q", copiedField.String(), fieldStr)
						}
					}
				}
			}
		}
	}
}

// Test TemplateNode
func TestTemplateNode(t *testing.T) {
	trees, err := parse.Parse("test", `{{template "other" .}}`, "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the TemplateNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if tmplNode, ok := tree.Root.Nodes[0].(*parse.TemplateNode); ok {
			tmplStr := tmplNode.String()
			if tmplStr == "" {
				t.Fatal("TemplateNode.String returned empty")
			}
			copiedTmpl, ok := tmplNode.Copy().(*parse.TemplateNode)
			if !ok || copiedTmpl == nil {
				t.Fatal("TemplateNode.Copy returned invalid copy")
			}
			if copiedTmpl.String() != tmplStr {
				t.Fatalf("TemplateNode.Copy().String() mismatch: got %q, want %q", copiedTmpl.String(), tmplStr)
			}
		}
	}
}

// Test TextNode
func TestTextNode(t *testing.T) {
	trees, err := parse.Parse("test", "plain text", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the TextNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if textNode, ok := tree.Root.Nodes[0].(*parse.TextNode); ok {
			textStr := textNode.String()
			if textStr != "plain text" {
				t.Fatalf("TextNode.String mismatch: got %q, want %q", textStr, "plain text")
			}
			copiedText, ok := textNode.Copy().(*parse.TextNode)
			if !ok || copiedText == nil {
				t.Fatal("TextNode.Copy returned invalid copy")
			}
			if copiedText.String() != textStr {
				t.Fatalf("TextNode.Copy().String() mismatch: got %q, want %q", copiedText.String(), textStr)
			}
		}
	}
}

// Test CommentNode
func TestCommentNode(t *testing.T) {
	// ParseComments is a Mode, need to create a Tree with it
	tree := parse.New("test")
	tree.Mode = parse.ParseComments
	treeSet := make(map[string]*parse.Tree)
	_, err := tree.Parse("{{/* comment */}}", "{{", "}}", treeSet)
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the CommentNode in the tree
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if commentNode, ok := tree.Root.Nodes[0].(*parse.CommentNode); ok {
			commentStr := commentNode.String()
			if commentStr != "{{/* comment */}}" {
				t.Fatalf("CommentNode.String mismatch: got %q, want %q", commentStr, "{{/* comment */}}")
			}
			copiedComment, ok := commentNode.Copy().(*parse.CommentNode)
			if !ok || copiedComment == nil {
				t.Fatal("CommentNode.Copy returned invalid copy")
			}
			if copiedComment.String() != commentStr {
				t.Fatalf("CommentNode.Copy().String() mismatch: got %q, want %q", copiedComment.String(), commentStr)
			}
		}
	}
}

// Test BreakNode
func TestBreakNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{range .}}{{break}}{{end}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the BreakNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if rangeNode, ok := tree.Root.Nodes[0].(*parse.RangeNode); ok {
			if rangeNode.List != nil && len(rangeNode.List.Nodes) > 0 {
				if breakNode, ok := rangeNode.List.Nodes[0].(*parse.BreakNode); ok {
					breakStr := breakNode.String()
					if breakStr != "{{break}}" {
						t.Fatalf("BreakNode.String mismatch: got %q, want %q", breakStr, "{{break}}")
					}
					copiedBreak, ok := breakNode.Copy().(*parse.BreakNode)
					if !ok || copiedBreak == nil {
						t.Fatal("BreakNode.Copy returned invalid copy")
					}
					if copiedBreak.String() != breakStr {
						t.Fatalf("BreakNode.Copy().String() mismatch: got %q, want %q", copiedBreak.String(), breakStr)
					}
				}
			}
		}
	}
}

// Test ContinueNode
func TestContinueNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{range .}}{{continue}}{{end}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	// Find the ContinueNode in the tree
	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if rangeNode, ok := tree.Root.Nodes[0].(*parse.RangeNode); ok {
			if rangeNode.List != nil && len(rangeNode.List.Nodes) > 0 {
				if continueNode, ok := rangeNode.List.Nodes[0].(*parse.ContinueNode); ok {
					continueStr := continueNode.String()
					if continueStr != "{{continue}}" {
						t.Fatalf("ContinueNode.String mismatch: got %q, want %q", continueStr, "{{continue}}")
					}
					copiedContinue, ok := continueNode.Copy().(*parse.ContinueNode)
					if !ok || copiedContinue == nil {
						t.Fatal("ContinueNode.Copy returned invalid copy")
					}
					if copiedContinue.String() != continueStr {
						t.Fatalf("ContinueNode.Copy().String() mismatch: got %q, want %q", copiedContinue.String(), continueStr)
					}
				}
			}
		}
	}
}

// Test ActionNode
func TestActionNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{.}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			actionStr := action.String()
			if actionStr != "{{.}}" {
				t.Fatalf("ActionNode.String mismatch: got %q, want %q", actionStr, "{{.}}")
			}
			copiedAction, ok := action.Copy().(*parse.ActionNode)
			if !ok || copiedAction == nil {
				t.Fatal("ActionNode.Copy returned invalid copy")
			}
			if copiedAction.String() != actionStr {
				t.Fatalf("ActionNode.Copy().String() mismatch: got %q, want %q", copiedAction.String(), actionStr)
			}
		}
	}
}

// Test ListNode
func TestListNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{range .}}text{{end}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if rangeNode, ok := tree.Root.Nodes[0].(*parse.RangeNode); ok {
			if rangeNode.List != nil {
				listStr := rangeNode.List.String()
				if listStr != "text" {
					t.Fatalf("ListNode.String mismatch: got %q, want %q", listStr, "text")
				}
				copiedList, ok := rangeNode.List.Copy().(*parse.ListNode)
				if !ok || copiedList == nil {
					t.Fatal("ListNode.Copy returned invalid copy")
				}
				if copiedList.String() != listStr {
					t.Fatalf("ListNode.Copy().String() mismatch: got %q, want %q", copiedList.String(), listStr)
				}
			}
		}
	}
}

// Test PipeNode
func TestPipeNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{.}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil {
				pipeStr := action.Pipe.String()
				if pipeStr != "." {
					t.Fatalf("PipeNode.String mismatch: got %q, want %q", pipeStr, ".")
				}
				copiedPipe, ok := action.Pipe.Copy().(*parse.PipeNode)
				if !ok || copiedPipe == nil {
					t.Fatal("PipeNode.Copy returned invalid copy")
				}
				if copiedPipe.String() != pipeStr {
					t.Fatalf("PipeNode.Copy().String() mismatch: got %q, want %q", copiedPipe.String(), pipeStr)
				}
			}
		}
	}
}

// Test CommandNode
func TestCommandNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{.}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				cmd := action.Pipe.Cmds[0]
				cmdStr := cmd.String()
				if cmdStr != "." {
					t.Fatalf("CommandNode.String mismatch: got %q, want %q", cmdStr, ".")
				}
				copiedCmd, ok := cmd.Copy().(*parse.CommandNode)
				if !ok || copiedCmd == nil {
					t.Fatal("CommandNode.Copy returned invalid copy")
				}
				if copiedCmd.String() != cmdStr {
					t.Fatalf("CommandNode.Copy().String() mismatch: got %q, want %q", copiedCmd.String(), cmdStr)
				}
			}
		}
	}
}

// Test ChainNode
func TestChainNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{.A.B}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if action, ok := tree.Root.Nodes[0].(*parse.ActionNode); ok {
			if action.Pipe != nil && len(action.Pipe.Cmds) > 0 {
				if len(action.Pipe.Cmds[0].Args) > 0 {
					if chain, ok := action.Pipe.Cmds[0].Args[0].(*parse.ChainNode); ok {
						chainStr := chain.String()
						if chainStr != ".A.B" {
							t.Fatalf("ChainNode.String mismatch: got %q, want %q", chainStr, ".A.B")
						}
						copiedChain, ok := chain.Copy().(*parse.ChainNode)
						if !ok || copiedChain == nil {
							t.Fatal("ChainNode.Copy returned invalid copy")
						}
						if copiedChain.String() != chainStr {
							t.Fatalf("ChainNode.Copy().String() mismatch: got %q, want %q", copiedChain.String(), chainStr)
						}
					}
				}
			}
		}
	}
}

// Test BranchNode through IfNode
func TestBranchNodeIfNode(t *testing.T) {
	trees, err := parse.Parse("test", "{{if .}}yes{{end}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if ifNode, ok := tree.Root.Nodes[0].(*parse.IfNode); ok {
			// Test IfNode.Copy
			copiedIf, ok := ifNode.Copy().(*parse.IfNode)
			if !ok || copiedIf == nil {
				t.Fatal("IfNode.Copy returned invalid copy")
			}
			if copiedIf.String() != ifNode.String() {
				t.Fatalf("IfNode.Copy().String() mismatch: got %q, want %q", copiedIf.String(), ifNode.String())
			}

			// Test BranchNode methods through embedded field
			branchStr := ifNode.BranchNode.String()
			if branchStr == "" {
				t.Fatal("BranchNode.String returned empty")
			}
			branchCopy := ifNode.BranchNode.Copy()
			if branchCopy == nil {
				t.Fatal("BranchNode.Copy returned nil")
			}
			if branchCopy.String() != branchStr {
				t.Fatalf("BranchNode.Copy().String() mismatch: got %q, want %q", branchCopy.String(), branchStr)
			}
		}
	}
}

// Test RangeNode
func TestRangeNodeCopy(t *testing.T) {
	trees, err := parse.Parse("test", "{{range .}}item{{end}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if rangeNode, ok := tree.Root.Nodes[0].(*parse.RangeNode); ok {
			rangeStr := rangeNode.String()
			if rangeStr == "" {
				t.Fatal("RangeNode.String returned empty")
			}
			copiedRange, ok := rangeNode.Copy().(*parse.RangeNode)
			if !ok || copiedRange == nil {
				t.Fatal("RangeNode.Copy returned invalid copy")
			}
			if copiedRange.String() != rangeStr {
				t.Fatalf("RangeNode.Copy().String() mismatch: got %q, want %q", copiedRange.String(), rangeStr)
			}
		}
	}
}

// Test WithNode
func TestWithNodeCopy(t *testing.T) {
	trees, err := parse.Parse("test", "{{with .}}item{{end}}", "{{", "}}")
	if err != nil {
		t.Fatalf("Parse failed: %v", err)
	}

	tree := trees["test"]
	if tree != nil && tree.Root != nil && len(tree.Root.Nodes) > 0 {
		if withNode, ok := tree.Root.Nodes[0].(*parse.WithNode); ok {
			withStr := withNode.String()
			if withStr == "" {
				t.Fatal("WithNode.String returned empty")
			}
			copiedWith, ok := withNode.Copy().(*parse.WithNode)
			if !ok || copiedWith == nil {
				t.Fatal("WithNode.Copy returned invalid copy")
			}
			if copiedWith.String() != withStr {
				t.Fatalf("WithNode.Copy().String() mismatch: got %q, want %q", copiedWith.String(), withStr)
			}
		}
	}
}

// Test Mode type
func TestMode(t *testing.T) {
	var m parse.Mode
	m = parse.ParseComments
	if m != parse.ParseComments {
		t.Error("Mode assignment failed")
	}

	m = parse.SkipFuncCheck
	if m != parse.SkipFuncCheck {
		t.Error("Mode assignment failed")
	}
}
