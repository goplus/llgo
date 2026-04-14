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
	"bytes"
	"fmt"
	"sort"

	"github.com/goplus/llvm"
)

const (
	useIfaceMetadata       = "llgo.useiface"
	useIfaceMethodMetadata = "llgo.useifacemethod"
	interfaceInfoMetadata  = "llgo.interfaceinfo"
	methodInfoMetadata     = "llgo.methodinfo"
	useNamedMethodMetadata = "llgo.usenamedmethod"
	reflectMethodMetadata  = "llgo.reflectmethod"
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

func (info ModuleInfo) String() string {
	var buf bytes.Buffer
	writeSymbolListSection(&buf, "UseIface", info.UseIface)
	writeIfaceMethodSection(&buf, "UseIfaceMethod", info.UseIfaceMethod)
	writeInterfaceInfoSection(&buf, "InterfaceInfo", info.InterfaceInfo)
	writeMethodInfoSection(&buf, "MethodInfo", info.MethodInfo)
	writeStringListSection(&buf, "UseNamedMethod", info.UseNamedMethod)
	writeReflectMethodSection(&buf, "ReflectMethod", info.ReflectMethod)
	return buf.String()
}

func readUseIface(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(useIfaceMetadata)
	for i, row := range rows {
		fields, err := rowFields(useIfaceMetadata, i, row, 2)
		if err != nil {
			return err
		}
		owner, err := fieldString(useIfaceMetadata, i, 0, fields[0])
		if err != nil {
			return err
		}
		target, err := fieldString(useIfaceMetadata, i, 1, fields[1])
		if err != nil {
			return err
		}
		info.UseIface[Symbol(owner)] = append(info.UseIface[Symbol(owner)], Symbol(target))
	}
	return nil
}

func readUseIfaceMethod(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(useIfaceMethodMetadata)
	for i, row := range rows {
		fields, err := rowFields(useIfaceMethodMetadata, i, row, 4)
		if err != nil {
			return err
		}
		owner, err := fieldString(useIfaceMethodMetadata, i, 0, fields[0])
		if err != nil {
			return err
		}
		target, err := fieldString(useIfaceMethodMetadata, i, 1, fields[1])
		if err != nil {
			return err
		}
		name, err := fieldString(useIfaceMethodMetadata, i, 2, fields[2])
		if err != nil {
			return err
		}
		mtyp, err := fieldString(useIfaceMethodMetadata, i, 3, fields[3])
		if err != nil {
			return err
		}
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
	rows := mod.NamedMetadataOperands(interfaceInfoMetadata)
	for i, row := range rows {
		fields, err := rowFields(interfaceInfoMetadata, i, row, 3)
		if err != nil {
			return err
		}
		target, err := fieldString(interfaceInfoMetadata, i, 0, fields[0])
		if err != nil {
			return err
		}
		name, err := fieldString(interfaceInfoMetadata, i, 1, fields[1])
		if err != nil {
			return err
		}
		mtyp, err := fieldString(interfaceInfoMetadata, i, 2, fields[2])
		if err != nil {
			return err
		}
		info.InterfaceInfo[Symbol(target)] = append(info.InterfaceInfo[Symbol(target)], MethodSig{
			Name:  name,
			MType: Symbol(mtyp),
		})
	}
	return nil
}

func readMethodInfo(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(methodInfoMetadata)
	for i, row := range rows {
		fields, err := rowFields(methodInfoMetadata, i, row, 6)
		if err != nil {
			return err
		}
		target, err := fieldString(methodInfoMetadata, i, 0, fields[0])
		if err != nil {
			return err
		}
		index, err := fieldInt(methodInfoMetadata, i, 1, fields[1])
		if err != nil {
			return err
		}
		name, err := fieldString(methodInfoMetadata, i, 2, fields[2])
		if err != nil {
			return err
		}
		mtyp, err := fieldString(methodInfoMetadata, i, 3, fields[3])
		if err != nil {
			return err
		}
		ifn, err := fieldString(methodInfoMetadata, i, 4, fields[4])
		if err != nil {
			return err
		}
		tfn, err := fieldString(methodInfoMetadata, i, 5, fields[5])
		if err != nil {
			return err
		}
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
	rows := mod.NamedMetadataOperands(useNamedMethodMetadata)
	for i, row := range rows {
		fields, err := rowFields(useNamedMethodMetadata, i, row, 2)
		if err != nil {
			return err
		}
		owner, err := fieldString(useNamedMethodMetadata, i, 0, fields[0])
		if err != nil {
			return err
		}
		name, err := fieldString(useNamedMethodMetadata, i, 1, fields[1])
		if err != nil {
			return err
		}
		info.UseNamedMethod[Symbol(owner)] = append(info.UseNamedMethod[Symbol(owner)], name)
	}
	return nil
}

func readReflectMethod(mod llvm.Module, info *ModuleInfo) error {
	rows := mod.NamedMetadataOperands(reflectMethodMetadata)
	for i, row := range rows {
		fields, err := rowFields(reflectMethodMetadata, i, row, 1)
		if err != nil {
			return err
		}
		owner, err := fieldString(reflectMethodMetadata, i, 0, fields[0])
		if err != nil {
			return err
		}
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

func fieldString(table string, rowIndex, fieldIndex int, field llvm.Value) (string, error) {
	if !field.IsAMDString() {
		return "", fmt.Errorf("%s row %d field %d: want mdstring", table, rowIndex, fieldIndex)
	}
	return field.MDString(), nil
}

func fieldInt(table string, rowIndex, fieldIndex int, field llvm.Value) (int, error) {
	if field.IsAConstantInt().IsNil() {
		return 0, fmt.Errorf("%s row %d field %d: want constant int metadata", table, rowIndex, fieldIndex)
	}
	return int(field.ZExtValue()), nil
}

func writeSectionHeader(buf *bytes.Buffer, name string) {
	if buf.Len() != 0 {
		buf.WriteByte('\n')
	}
	fmt.Fprintf(buf, "[%s]\n", name)
}

func writeSymbolListSection(buf *bytes.Buffer, name string, data map[Symbol][]Symbol) {
	if len(data) == 0 {
		return
	}
	writeSectionHeader(buf, name)
	for _, key := range sortedSymbolKeys(data) {
		fmt.Fprintf(buf, "%s:\n", key)
		for _, value := range sortedSymbols(data[key]) {
			fmt.Fprintf(buf, "    %s\n", value)
		}
	}
}

func writeIfaceMethodSection(buf *bytes.Buffer, name string, data map[Symbol][]IfaceMethodDemand) {
	if len(data) == 0 {
		return
	}
	writeSectionHeader(buf, name)
	for _, key := range sortedSymbolKeys(data) {
		fmt.Fprintf(buf, "%s:\n", key)
		for _, value := range sortedIfaceMethodDemands(data[key]) {
			fmt.Fprintf(buf, "    %s %s %s\n", value.Target, value.Sig.Name, value.Sig.MType)
		}
	}
}

func writeInterfaceInfoSection(buf *bytes.Buffer, name string, data map[Symbol][]MethodSig) {
	if len(data) == 0 {
		return
	}
	writeSectionHeader(buf, name)
	for _, key := range sortedSymbolKeys(data) {
		fmt.Fprintf(buf, "%s:\n", key)
		for _, value := range sortedMethodSigs(data[key]) {
			fmt.Fprintf(buf, "    %s %s\n", value.Name, value.MType)
		}
	}
}

func writeMethodInfoSection(buf *bytes.Buffer, name string, data map[Symbol][]MethodSlot) {
	if len(data) == 0 {
		return
	}
	writeSectionHeader(buf, name)
	for _, key := range sortedSymbolKeys(data) {
		fmt.Fprintf(buf, "%s:\n", key)
		for _, value := range data[key] {
			fmt.Fprintf(buf, "    %d %s %s %s %s\n", value.Index, value.Sig.Name, value.Sig.MType, value.IFn, value.TFn)
		}
	}
}

func writeStringListSection(buf *bytes.Buffer, name string, data map[Symbol][]string) {
	if len(data) == 0 {
		return
	}
	writeSectionHeader(buf, name)
	for _, key := range sortedSymbolKeys(data) {
		fmt.Fprintf(buf, "%s:\n", key)
		for _, value := range sortedStrings(data[key]) {
			fmt.Fprintf(buf, "    %s\n", value)
		}
	}
}

func writeReflectMethodSection(buf *bytes.Buffer, name string, data map[Symbol]struct{}) {
	if len(data) == 0 {
		return
	}
	writeSectionHeader(buf, name)
	for _, key := range sortedSetKeys(data) {
		fmt.Fprintf(buf, "%s\n", key)
	}
}

func sortedSymbolKeys[T any](m map[Symbol]T) []Symbol {
	keys := make([]Symbol, 0, len(m))
	for key := range m {
		keys = append(keys, key)
	}
	sort.Slice(keys, func(i, j int) bool { return keys[i] < keys[j] })
	return keys
}

func sortedSetKeys(m map[Symbol]struct{}) []Symbol {
	return sortedSymbolKeys(m)
}

func sortedSymbols(values []Symbol) []Symbol {
	out := append([]Symbol(nil), values...)
	sort.Slice(out, func(i, j int) bool { return out[i] < out[j] })
	return out
}

func sortedIfaceMethodDemands(values []IfaceMethodDemand) []IfaceMethodDemand {
	out := append([]IfaceMethodDemand(nil), values...)
	sort.Slice(out, func(i, j int) bool {
		a, b := out[i], out[j]
		if a.Target != b.Target {
			return a.Target < b.Target
		}
		if a.Sig.Name != b.Sig.Name {
			return a.Sig.Name < b.Sig.Name
		}
		return a.Sig.MType < b.Sig.MType
	})
	return out
}

func sortedMethodSigs(values []MethodSig) []MethodSig {
	out := append([]MethodSig(nil), values...)
	sort.Slice(out, func(i, j int) bool {
		a, b := out[i], out[j]
		if a.Name != b.Name {
			return a.Name < b.Name
		}
		return a.MType < b.MType
	})
	return out
}

func sortedStrings(values []string) []string {
	out := append([]string(nil), values...)
	sort.Strings(out)
	return out
}
