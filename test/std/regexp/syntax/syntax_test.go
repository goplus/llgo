package syntax_test

import (
	"regexp/syntax"
	"testing"
)

func TestParse(t *testing.T) {
	tests := []struct {
		pattern string
		flags   syntax.Flags
		wantErr bool
	}{
		{"a", syntax.Perl, false},
		{"a*", syntax.Perl, false},
		{"a+", syntax.Perl, false},
		{"a?", syntax.Perl, false},
		{"a|b", syntax.Perl, false},
		{"(a)", syntax.Perl, false},
		{"[abc]", syntax.Perl, false},
		{".", syntax.Perl, false},
		{"^a$", syntax.Perl, false},
		{"(", syntax.Perl, true},
		{")", syntax.Perl, true},
		{"[", syntax.Perl, true},
	}

	for _, tt := range tests {
		re, err := syntax.Parse(tt.pattern, tt.flags)
		if tt.wantErr {
			if err == nil {
				t.Errorf("Parse(%q) expected error", tt.pattern)
			}
		} else {
			if err != nil {
				t.Errorf("Parse(%q) unexpected error: %v", tt.pattern, err)
			}
			if re == nil {
				t.Errorf("Parse(%q) returned nil regexp", tt.pattern)
			}
		}
	}
}

func TestCompile(t *testing.T) {
	re, err := syntax.Parse("a*b+", syntax.Perl)
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	prog, err := syntax.Compile(re)
	if err != nil {
		t.Fatalf("Compile error: %v", err)
	}

	if prog == nil {
		t.Fatal("Compile returned nil program")
	}

	if len(prog.Inst) == 0 {
		t.Error("Compiled program has no instructions")
	}
}

func TestRegexpString(t *testing.T) {
	tests := []string{
		"a",
		"a*",
		"a+",
		"a?",
		"a|b",
		"(a)",
		"[abc]",
		".",
	}

	for _, pattern := range tests {
		re, err := syntax.Parse(pattern, syntax.Perl)
		if err != nil {
			t.Errorf("Parse(%q) error: %v", pattern, err)
			continue
		}

		str := re.String()
		if str == "" {
			t.Errorf("String() for %q returned empty string", pattern)
		}
	}
}

func TestRegexpSimplify(t *testing.T) {
	re, err := syntax.Parse("a*", syntax.Perl)
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	simplified := re.Simplify()
	if simplified == nil {
		t.Fatal("Simplify returned nil")
	}
}

func TestRegexpMaxCap(t *testing.T) {
	tests := []struct {
		pattern string
		maxCap  int
	}{
		{"a", 0},
		{"(a)", 1},
		{"(a)(b)", 2},
		{"(a)(b)(c)", 3},
	}

	for _, tt := range tests {
		re, err := syntax.Parse(tt.pattern, syntax.Perl)
		if err != nil {
			t.Errorf("Parse(%q) error: %v", tt.pattern, err)
			continue
		}

		maxCap := re.MaxCap()
		if maxCap != tt.maxCap {
			t.Errorf("MaxCap() for %q = %d, want %d", tt.pattern, maxCap, tt.maxCap)
		}
	}
}

func TestRegexpCapNames(t *testing.T) {
	tests := []struct {
		pattern string
		names   []string
	}{
		{"(a)", []string{"", ""}},
		{"(?P<name>a)", []string{"", "name"}},
		{"(?P<x>a)(?P<y>b)", []string{"", "x", "y"}},
	}

	for _, tt := range tests {
		re, err := syntax.Parse(tt.pattern, syntax.Perl)
		if err != nil {
			t.Errorf("Parse(%q) error: %v", tt.pattern, err)
			continue
		}

		names := re.CapNames()
		if len(names) != len(tt.names) {
			t.Errorf("CapNames() for %q length = %d, want %d", tt.pattern, len(names), len(tt.names))
		}
	}
}

func TestIsWordChar(t *testing.T) {
	tests := []struct {
		r    rune
		want bool
	}{
		{'a', true},
		{'Z', true},
		{'0', true},
		{'_', true},
		{' ', false},
		{'.', false},
		{'\n', false},
	}

	for _, tt := range tests {
		got := syntax.IsWordChar(tt.r)
		if got != tt.want {
			t.Errorf("IsWordChar(%q) = %v, want %v", tt.r, got, tt.want)
		}
	}
}

func TestError(t *testing.T) {
	err := &syntax.Error{
		Code: syntax.ErrInvalidCharClass,
		Expr: "[z-a]",
	}

	errStr := err.Error()
	if errStr == "" {
		t.Error("Error.Error() returned empty string")
	}
}

func TestErrorCode(t *testing.T) {
	codes := []syntax.ErrorCode{
		syntax.ErrInternalError,
		syntax.ErrInvalidCharClass,
		syntax.ErrInvalidCharRange,
		syntax.ErrInvalidEscape,
		syntax.ErrInvalidNamedCapture,
		syntax.ErrInvalidPerlOp,
		syntax.ErrInvalidRepeatOp,
		syntax.ErrInvalidRepeatSize,
		syntax.ErrInvalidUTF8,
		syntax.ErrMissingBracket,
		syntax.ErrMissingParen,
		syntax.ErrMissingRepeatArgument,
		syntax.ErrTrailingBackslash,
		syntax.ErrUnexpectedParen,
		syntax.ErrNestingDepth,
		syntax.ErrLarge,
	}

	for _, code := range codes {
		str := code.String()
		if str == "" {
			t.Errorf("ErrorCode.String() returned empty string for %v", code)
		}
	}
}

func TestFlags(t *testing.T) {
	flags := syntax.Perl | syntax.UnicodeGroups

	if flags&syntax.Perl == 0 {
		t.Error("Perl flag not set")
	}
	if flags&syntax.UnicodeGroups == 0 {
		t.Error("UnicodeGroups flag not set")
	}
}

func TestOp(t *testing.T) {
	ops := []syntax.Op{
		syntax.OpNoMatch,
		syntax.OpEmptyMatch,
		syntax.OpLiteral,
		syntax.OpCharClass,
		syntax.OpAnyCharNotNL,
		syntax.OpAnyChar,
		syntax.OpBeginLine,
		syntax.OpEndLine,
		syntax.OpBeginText,
		syntax.OpEndText,
		syntax.OpWordBoundary,
		syntax.OpNoWordBoundary,
		syntax.OpCapture,
		syntax.OpStar,
		syntax.OpPlus,
		syntax.OpQuest,
		syntax.OpRepeat,
		syntax.OpConcat,
		syntax.OpAlternate,
	}

	for _, op := range ops {
		str := op.String()
		if str == "" {
			t.Errorf("Op.String() returned empty for %v", op)
		}
	}
}

func TestEmptyOp(t *testing.T) {
	ops := []syntax.EmptyOp{
		syntax.EmptyBeginLine,
		syntax.EmptyEndLine,
		syntax.EmptyBeginText,
		syntax.EmptyEndText,
		syntax.EmptyWordBoundary,
		syntax.EmptyNoWordBoundary,
	}

	for _, op := range ops {
		if op == 0 {
			t.Error("EmptyOp is zero")
		}
	}
}

func TestInstOp(t *testing.T) {
	ops := []syntax.InstOp{
		syntax.InstAlt,
		syntax.InstAltMatch,
		syntax.InstCapture,
		syntax.InstEmptyWidth,
		syntax.InstMatch,
		syntax.InstFail,
		syntax.InstNop,
		syntax.InstRune,
		syntax.InstRune1,
		syntax.InstRuneAny,
		syntax.InstRuneAnyNotNL,
	}

	for _, op := range ops {
		str := op.String()
		if str == "" {
			t.Errorf("InstOp.String() returned empty for %v", op)
		}
	}
}

func TestProgString(t *testing.T) {
	re, err := syntax.Parse("a*", syntax.Perl)
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	prog, err := syntax.Compile(re)
	if err != nil {
		t.Fatalf("Compile error: %v", err)
	}

	str := prog.String()
	if str == "" {
		t.Error("Prog.String() returned empty string")
	}
}

func TestProgStartCond(t *testing.T) {
	re, err := syntax.Parse("^abc", syntax.Perl)
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	prog, err := syntax.Compile(re)
	if err != nil {
		t.Fatalf("Compile error: %v", err)
	}

	startCond := prog.StartCond()
	if startCond == 0 {
		t.Error("StartCond() returned 0 for ^abc")
	}
}

func TestProgPrefix(t *testing.T) {
	tests := []struct {
		pattern   string
		hasPrefix bool
	}{
		{"abc", true},
		{"a*", false},
		{"abc|def", false},
	}

	for _, tt := range tests {
		re, err := syntax.Parse(tt.pattern, syntax.Perl)
		if err != nil {
			t.Errorf("Parse(%q) error: %v", tt.pattern, err)
			continue
		}

		prog, err := syntax.Compile(re)
		if err != nil {
			t.Errorf("Compile(%q) error: %v", tt.pattern, err)
			continue
		}

		prefix, complete := prog.Prefix()
		hasPrefix := prefix != "" || complete
		if hasPrefix != tt.hasPrefix {
			t.Errorf("Prefix() for %q hasPrefix = %v, want %v", tt.pattern, hasPrefix, tt.hasPrefix)
		}
	}
}

func TestInst(t *testing.T) {
	inst := syntax.Inst{
		Op:   syntax.InstRune,
		Rune: []rune{'a'},
	}

	if inst.Op != syntax.InstRune {
		t.Errorf("Inst.Op = %v, want InstRune", inst.Op)
	}
	if len(inst.Rune) != 1 || inst.Rune[0] != 'a' {
		t.Errorf("Inst.Rune = %v, want ['a']", inst.Rune)
	}
}

func TestRegexpEqual(t *testing.T) {
	re1, _ := syntax.Parse("a*", syntax.Perl)
	re2, _ := syntax.Parse("a*", syntax.Perl)
	re3, _ := syntax.Parse("b*", syntax.Perl)

	if !re1.Equal(re2) {
		t.Error("Equal() should return true for identical regexps")
	}
	if re1.Equal(re3) {
		t.Error("Equal() should return false for different regexps")
	}
}

func TestInstMethods(t *testing.T) {
	re, err := syntax.Parse("a+", syntax.Perl)
	if err != nil {
		t.Fatalf("Parse error: %v", err)
	}

	prog, err := syntax.Compile(re)
	if err != nil {
		t.Fatalf("Compile error: %v", err)
	}

	if len(prog.Inst) == 0 {
		t.Fatal("No instructions in compiled program")
	}

	for i, inst := range prog.Inst {
		str := inst.String()
		if str == "" {
			t.Errorf("Inst[%d].String() returned empty string", i)
		}

		matches := inst.MatchRune('a')
		_ = matches

		pos := inst.MatchRunePos('a')
		if pos < 0 && inst.Op == syntax.InstRune {
			t.Errorf("Inst[%d].MatchRunePos('a') = %d, expected >= 0 for InstRune", i, pos)
		}

		if inst.Op == syntax.InstEmptyWidth {
			matchEmpty := inst.MatchEmptyWidth(0, 0)
			_ = matchEmpty
		}
	}
}

func TestInstMatchEmptyWidth(t *testing.T) {
	inst := syntax.Inst{
		Op:  syntax.InstEmptyWidth,
		Arg: uint32(syntax.EmptyBeginLine),
	}

	tests := []struct {
		before rune
		after  rune
		want   bool
	}{
		{'\n', 'a', true},
		{'a', 'b', false},
	}

	for _, tt := range tests {
		got := inst.MatchEmptyWidth(tt.before, tt.after)
		if got != tt.want {
			t.Errorf("MatchEmptyWidth(%q, %q) = %v, want %v", tt.before, tt.after, got, tt.want)
		}
	}
}

func TestInstMatchRune(t *testing.T) {
	inst := syntax.Inst{
		Op:   syntax.InstRune1,
		Rune: []rune{'a'},
	}

	if !inst.MatchRune('a') {
		t.Error("MatchRune('a') = false, want true")
	}
	if inst.MatchRune('b') {
		t.Error("MatchRune('b') = true, want false")
	}
}

func TestInstMatchRunePos(t *testing.T) {
	inst := syntax.Inst{
		Op:   syntax.InstRune1,
		Rune: []rune{'a'},
	}

	pos := inst.MatchRunePos('a')
	if pos != 0 {
		t.Errorf("MatchRunePos('a') = %d, want 0", pos)
	}

	pos = inst.MatchRunePos('b')
	if pos != -1 {
		t.Errorf("MatchRunePos('b') = %d, want -1", pos)
	}
}

func TestInstString(t *testing.T) {
	tests := []syntax.Inst{
		{Op: syntax.InstMatch},
		{Op: syntax.InstFail},
		{Op: syntax.InstNop},
		{Op: syntax.InstRune, Rune: []rune{'a'}},
		{Op: syntax.InstRune1, Rune: []rune{'a'}},
		{Op: syntax.InstRuneAny},
		{Op: syntax.InstRuneAnyNotNL},
		{Op: syntax.InstEmptyWidth, Arg: uint32(syntax.EmptyBeginLine)},
		{Op: syntax.InstCapture, Arg: 1},
		{Op: syntax.InstAlt, Out: 1, Arg: 2},
		{Op: syntax.InstAltMatch, Out: 1, Arg: 2},
	}

	for i, inst := range tests {
		str := inst.String()
		if str == "" {
			t.Errorf("Inst[%d].String() returned empty string for Op=%v", i, inst.Op)
		}
	}
}
