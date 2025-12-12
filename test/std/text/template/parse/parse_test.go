package parse_test

import (
	"testing"
	"text/template/parse"
)

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
		_ = location
		_ = context
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
			_ = node.String()
			_ = node.Copy()
			_ = node.Type()

			// Exercise specific node types
			switch n := node.(type) {
			case *parse.ListNode:
				_ = n.CopyList()
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
				_ = n.CopyPipe()
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
						_ = dot.String()
						_ = dot.Copy()
						_ = dot.Type()
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
						_ = nilNode.String()
						_ = nilNode.Copy()
						_ = nilNode.Type()
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
						_ = boolNode.String()
						_ = boolNode.Copy()
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
						_ = numNode.String()
						_ = numNode.Copy()
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
						_ = strNode.String()
						_ = strNode.Copy()
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
						_ = varNode.String()
						_ = varNode.Copy()
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
						_ = fieldNode.String()
						_ = fieldNode.Copy()
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
			_ = tmplNode.String()
			_ = tmplNode.Copy()
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
			_ = textNode.String()
			_ = textNode.Copy()
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
			_ = commentNode.String()
			_ = commentNode.Copy()
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
					_ = breakNode.String()
					_ = breakNode.Copy()
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
					_ = continueNode.String()
					_ = continueNode.Copy()
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
			_ = action.String()
			_ = action.Copy()
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
				_ = rangeNode.List.String()
				_ = rangeNode.List.Copy()
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
				_ = action.Pipe.String()
				_ = action.Pipe.Copy()
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
				_ = cmd.String()
				_ = cmd.Copy()
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
						_ = chain.String()
						_ = chain.Copy()
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
			_ = ifNode.Copy()

			// Test BranchNode methods through embedded field
			_ = ifNode.BranchNode.String()
			_ = ifNode.BranchNode.Copy()
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
			_ = rangeNode.Copy()
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
			_ = withNode.Copy()
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
