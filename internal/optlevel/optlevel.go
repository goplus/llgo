package optlevel

import (
	"fmt"
	"strings"
)

type Level uint8

const (
	Unset Level = iota
	O0
	O1
	O2
	O3
	Os
	Oz
)

func Parse(level string) (Level, error) {
	normalizedLevel := strings.TrimSpace(strings.ToLower(level))
	normalizedLevel = strings.TrimPrefix(normalizedLevel, "-")
	normalizedLevel = strings.TrimPrefix(normalizedLevel, "o")
	switch normalizedLevel {
	case "0":
		return O0, nil
	case "1":
		return O1, nil
	case "2":
		return O2, nil
	case "3":
		return O3, nil
	case "s":
		return Os, nil
	case "z":
		return Oz, nil
	default:
		return Unset, fmt.Errorf("invalid optimization level %q, must be one of: 0, 1, 2, 3, s, z", level)
	}
}

func (l Level) IsValid() bool {
	return l >= O0 && l <= Oz
}

func (l Level) IsOptimized() bool {
	return l.IsValid() && l != O0
}

func (l Level) String() string {
	if !l.IsValid() {
		return "unset"
	}
	return l.Flag()
}

func (l Level) Flag() string {
	if !l.IsValid() {
		return ""
	}
	return "-O" + l.Suffix()
}

func (l Level) Suffix() string {
	switch l {
	case O0:
		return "0"
	case O1:
		return "1"
	case O2:
		return "2"
	case O3:
		return "3"
	case Os:
		return "s"
	case Oz:
		return "z"
	default:
		return ""
	}
}
