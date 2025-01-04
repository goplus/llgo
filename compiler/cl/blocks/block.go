/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package blocks

import (
	llssa "github.com/goplus/llgo/compiler/ssa"
	"golang.org/x/tools/go/ssa"
)

type Info struct {
	Kind llssa.DoAction
	Next int
}

// -----------------------------------------------------------------------------

type blockState struct {
	self   *ssa.BasicBlock
	preds  int
	succs  []int
	loop   bool
	always bool
	reach  bool
	fdel   bool
}

func (p *blockState) kind() llssa.DoAction {
	if p.loop {
		return llssa.DeferInLoop
	}
	if p.always {
		return llssa.DeferAlways
	}
	return llssa.DeferInCond
}

func newSuccs(succs []*ssa.BasicBlock) []int {
	ret := make([]int, len(succs))
	for i, blk := range succs {
		ret[i] = blk.Index
	}
	return ret
}

func findLoop(states []*blockState, path []int, from, iblk int) []int {
	path = append(path, iblk)
	self := states[iblk]
	for _, succ := range self.succs {
		if states[succ].fdel {
			continue
		}
		if pos := find(path, succ); pos >= 0 {
			if pos > 0 {
				continue
			}
			for _, i := range path {
				s := states[i]
				s.loop = true
				s.fdel = true
			}
			return path
		}
		if ret := findLoop(states, path, from, succ); len(ret) > 0 {
			return ret
		}
	}
	return nil
}

// https://en.wikipedia.org/wiki/Topological_sorting
func Infos(blks []*ssa.BasicBlock) []Info {
	n := len(blks)
	order := make([]int, 1, n+1)
	order[0] = 0
	end, iend := 0, 0
	states := make([]*blockState, n)
	for i, blk := range blks {
		preds := len(blk.Preds)
		if preds == 0 && i != 0 {
			order = append(order, i)
		}
		if isEnd(blk) {
			end++
			iend = i
		}
		states[i] = &blockState{
			self:  blk,
			preds: preds,
			succs: newSuccs(blk.Succs),
		}
	}

	path := make([]int, 0, n)
	if states[0].preds != 0 {
		if loop := findLoop(states, path, 0, 0); len(loop) > 0 {
			order = append(order, loop[1:]...)
		}
	} else {
		states[0].always = true
	}
	if end == 1 {
		states[iend].always = true
	}
	pos := 0

retry:
	for pos < len(order) {
		iblk := order[pos]
		pos++
		state := states[iblk]
		state.fdel = true
		for _, succ := range state.succs {
			s := states[succ]
			if s.fdel {
				continue
			}
			if s.preds--; s.preds == 0 {
				order = append(order, succ)
			} else {
				s.reach = true
			}
		}
	}
	if pos < n {
		for iblk, state := range states {
			if state.fdel || !state.reach {
				continue
			}
			if loop := findLoop(states, path, iblk, iblk); len(loop) > 0 {
				order = append(order, loop...)
				goto retry
			}
		}
		panic("unreachable")
	}
	order = append(order, -1)
	ret := make([]Info, n)
	for i := 0; i < n; i++ {
		iblk := order[i]
		ret[iblk] = Info{states[iblk].kind(), order[i+1]}
	}
	return ret
}

func isEnd(blk *ssa.BasicBlock) bool {
	// Note: skip recover block
	return len(blk.Succs) == 0 && (len(blk.Preds) > 0 || blk.Index == 0)
}

func find(path []int, fv int) int {
	for i, v := range path {
		if v == fv {
			return i
		}
	}
	return -1
}

// -----------------------------------------------------------------------------
