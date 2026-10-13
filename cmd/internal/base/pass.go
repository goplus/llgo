package base

import (
	"flag"
	"fmt"
	"strconv"
	"strings"
)

type stringValue struct {
	p    *PassArgs
	name string
}

func (p *stringValue) String() string {
	return ""
}

func (p *stringValue) Set(v string) error {
	p.p.Args = append(p.p.Args, fmt.Sprintf("-%v=%v", p.name, v))
	return nil
}

type boolValue struct {
	p    *PassArgs
	name string
}

func (p *boolValue) String() string {
	return ""
}

func (p *boolValue) Set(v string) error {
	if _, err := strconv.ParseBool(v); err != nil {
		return err
	}
	p.p.Args = append(p.p.Args, fmt.Sprintf("-%v=%v", p.name, v))
	return nil
}

func (p *boolValue) IsBoolFlag() bool {
	return true
}

type PassArgs struct {
	Args []string
	Flag *flag.FlagSet
	Help func(string) string
}

func (p *PassArgs) Tags() string {
	for _, v := range p.Args {
		if strings.HasPrefix(v, "-tags=") {
			return v[6:]
		}
	}
	return ""
}

func (p *PassArgs) Var(names ...string) {
	for _, name := range names {
		p.Flag.Var(&stringValue{p: p, name: name}, name, p.description(name))
	}
}

func (p *PassArgs) Bool(names ...string) {
	for _, name := range names {
		p.Flag.Var(&boolValue{p: p, name: name}, name, p.description(name))
	}
}

func (p *PassArgs) description(name string) string {
	if p.Help != nil {
		return p.Help(name)
	}
	return "Pass -" + name + " to the Go package loader"
}

func NewPassArgs(flag *flag.FlagSet) *PassArgs {
	p := &PassArgs{Flag: flag}
	return p
}
