/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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

package semmeta

import (
	"fmt"
	"strings"

	"github.com/goplus/llvm"
)

const (
	UseIfaceMetadata       = "llgo.useiface"
	UseIfaceMethodMetadata = "llgo.useifacemethod"
	InterfaceInfoMetadata  = "llgo.interfaceinfo"
	MethodInfoMetadata     = "llgo.methodinfo"
	UseNamedMethodMetadata = "llgo.usenamedmethod"
	ReflectMethodMetadata  = "llgo.reflectmethod"
)

type Symbol string

type MethodSig struct {
	Name  string
	MType Symbol
}

type IfaceMethodDemand struct {
	Target Symbol
	Sig    MethodSig
}

type MethodSlot struct {
	Index int
	Sig   MethodSig
	IFn   Symbol
	TFn   Symbol
}

type ModuleInfo struct {
	InterfaceInfo  map[Symbol][]MethodSig
	UseIface       map[Symbol][]Symbol
	UseIfaceMethod map[Symbol][]IfaceMethodDemand
	MethodInfo     map[Symbol][]MethodSlot
	UseNamedMethod map[Symbol][]string
	ReflectMethod  map[Symbol]struct{}
}

type Emitter struct {
	mod  llvm.Module
	ctx  llvm.Context
	seen map[string]struct{}
}

func NewEmitter(mod llvm.Module) *Emitter {
	return &Emitter{
		mod:  mod,
		ctx:  mod.Context(),
		seen: make(map[string]struct{}),
	}
}

func (e *Emitter) AddUseIface(owner, target Symbol) {
	e.add(
		UseIfaceMetadata,
		metadataKey(string(owner), string(target)),
		e.mdString(string(owner)),
		e.mdString(string(target)),
	)
}

func (e *Emitter) AddUseIfaceMethod(owner Symbol, demand IfaceMethodDemand) {
	e.add(
		UseIfaceMethodMetadata,
		metadataKey(string(owner), string(demand.Target), demand.Sig.Name, string(demand.Sig.MType)),
		e.mdString(string(owner)),
		e.mdString(string(demand.Target)),
		e.mdString(demand.Sig.Name),
		e.mdString(string(demand.Sig.MType)),
	)
}

func (e *Emitter) AddInterfaceInfo(target Symbol, methods []MethodSig) {
	if len(methods) == 0 {
		return
	}
	for _, method := range methods {
		e.add(
			InterfaceInfoMetadata,
			metadataKey(string(target), method.Name, string(method.MType)),
			e.mdString(string(target)),
			e.mdString(method.Name),
			e.mdString(string(method.MType)),
		)
	}
}

func (e *Emitter) AddMethodInfo(typeSym Symbol, slots []MethodSlot) {
	if len(slots) == 0 {
		return
	}
	for _, slot := range slots {
		e.add(
			MethodInfoMetadata,
			metadataKey(string(typeSym), fmt.Sprint(slot.Index), slot.Sig.Name, string(slot.Sig.MType), string(slot.IFn), string(slot.TFn)),
			e.mdString(string(typeSym)),
			e.mdInt32(slot.Index),
			e.mdString(slot.Sig.Name),
			e.mdString(string(slot.Sig.MType)),
			e.mdString(string(slot.IFn)),
			e.mdString(string(slot.TFn)),
		)
	}
}

func (e *Emitter) AddUseNamedMethod(owner Symbol, name string) {
	e.add(
		UseNamedMethodMetadata,
		metadataKey(string(owner), name),
		e.mdString(string(owner)),
		e.mdString(name),
	)
}

func (e *Emitter) AddReflectMethod(owner Symbol) {
	e.add(
		ReflectMethodMetadata,
		string(owner),
		e.mdString(string(owner)),
	)
}

func Read(mod llvm.Module) (ModuleInfo, error) {
	info := ModuleInfo{
		InterfaceInfo:  make(map[Symbol][]MethodSig),
		UseIface:       make(map[Symbol][]Symbol),
		UseIfaceMethod: make(map[Symbol][]IfaceMethodDemand),
		MethodInfo:     make(map[Symbol][]MethodSlot),
		UseNamedMethod: make(map[Symbol][]string),
		ReflectMethod:  make(map[Symbol]struct{}),
	}
	if err := readUseIface(mod, &info); err != nil {
		return ModuleInfo{}, err
	}
	if err := readUseIfaceMethod(mod, &info); err != nil {
		return ModuleInfo{}, err
	}
	if err := readInterfaceInfo(mod, &info); err != nil {
		return ModuleInfo{}, err
	}
	if err := readMethodInfo(mod, &info); err != nil {
		return ModuleInfo{}, err
	}
	if err := readUseNamedMethod(mod, &info); err != nil {
		return ModuleInfo{}, err
	}
	if err := readReflectMethod(mod, &info); err != nil {
		return ModuleInfo{}, err
	}
	return info, nil
}

func readUseIface(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(UseIfaceMetadata)
	for i, row := range rows {
		fields, err := rowFields(UseIfaceMetadata, i, row, 2)
		if err != nil {
			return err
		}
		owner := fieldString(fields[0])
		target := fieldString(fields[1])
		info.UseIface[Symbol(owner)] = append(info.UseIface[Symbol(owner)], Symbol(target))
	}
	return nil
}

func readUseIfaceMethod(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(UseIfaceMethodMetadata)
	for i, row := range rows {
		fields, err := rowFields(UseIfaceMethodMetadata, i, row, 4)
		if err != nil {
			return err
		}
		owner := fieldString(fields[0])
		target := fieldString(fields[1])
		name := fieldString(fields[2])
		mtyp := fieldString(fields[3])
		info.UseIfaceMethod[Symbol(owner)] = append(info.UseIfaceMethod[Symbol(owner)], IfaceMethodDemand{
			Target: Symbol(target),
			Sig: MethodSig{
				Name:  name,
				MType: Symbol(mtyp),
			},
		})
	}
	return nil
}

func readInterfaceInfo(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(InterfaceInfoMetadata)
	for i, row := range rows {
		fields, err := rowFields(InterfaceInfoMetadata, i, row, 3)
		if err != nil {
			return err
		}
		target := fieldString(fields[0])
		name := fieldString(fields[1])
		mtyp := fieldString(fields[2])
		info.InterfaceInfo[Symbol(target)] = append(info.InterfaceInfo[Symbol(target)], MethodSig{
			Name:  name,
			MType: Symbol(mtyp),
		})
	}
	return nil
}

func readMethodInfo(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(MethodInfoMetadata)
	for i, row := range rows {
		fields, err := rowFields(MethodInfoMetadata, i, row, 6)
		if err != nil {
			return err
		}
		target := fieldString(fields[0])
		index := fieldInt(fields[1])
		name := fieldString(fields[2])
		mtyp := fieldString(fields[3])
		ifn := fieldString(fields[4])
		tfn := fieldString(fields[5])
		info.MethodInfo[Symbol(target)] = append(info.MethodInfo[Symbol(target)], MethodSlot{
			Index: index,
			Sig: MethodSig{
				Name:  name,
				MType: Symbol(mtyp),
			},
			IFn: Symbol(ifn),
			TFn: Symbol(tfn),
		})
	}
	return nil
}

func readUseNamedMethod(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(UseNamedMethodMetadata)
	for i, row := range rows {
		fields, err := rowFields(UseNamedMethodMetadata, i, row, 2)
		if err != nil {
			return err
		}
		owner := fieldString(fields[0])
		name := fieldString(fields[1])
		info.UseNamedMethod[Symbol(owner)] = append(info.UseNamedMethod[Symbol(owner)], name)
	}
	return nil
}

func readReflectMethod(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(ReflectMethodMetadata)
	for i, row := range rows {
		fields, err := rowFields(ReflectMethodMetadata, i, row, 1)
		if err != nil {
			return err
		}
		owner := fieldString(fields[0])
		info.ReflectMethod[Symbol(owner)] = struct{}{}
	}
	return nil
}

func rowFields(table string, rowIndex int, row llvm.Value, want int) ([]llvm.Value, error) {
	fields := row.MDNodeOperands()
	if len(fields) != want {
		return nil, fmt.Errorf("%s row %d: field count = %d, want %d", table, rowIndex, len(fields), want)
	}
	return fields, nil
}

func fieldString(field llvm.Value) string {
	return field.MDString()
}

func fieldInt(field llvm.Value) int {
	return int(field.ZExtValue())
}

func (e *Emitter) add(table, key string, fields ...llvm.Metadata) {
	fullKey := table + ":" + key
	if _, ok := e.seen[fullKey]; ok {
		return
	}
	e.seen[fullKey] = struct{}{}
	e.mod.AddNamedMetadataOperand(table, e.ctx.MDNode(fields))
}

func metadataKey(parts ...string) string {
	return strings.Join(parts, ":")
}

func (e *Emitter) mdString(s string) llvm.Metadata {
	return e.ctx.MDString(s)
}

func (e *Emitter) mdInt32(i int) llvm.Metadata {
	return llvm.ConstInt(e.ctx.Int32Type(), uint64(i), false).ConstantAsMetadata()
}
