from __future__ import annotations
import sys
import re
from dataclasses import dataclass, field
from typing import Optional


C_TO_GO_TYPE_MAP = {
    "char": "Char",
    "double": "Double",
    "float": "Float",
    "int": "Int",
    "int8_t": "Char",
    "int32_t": "Int",
    "int64_t": "UlongLong",
    "long long": "LongLong",
    "long": "Long",
    "Py_ssize_t": "SSizeT",
    "PyObject": "Object",
    "short": "Short",
    "size_t": "Ulong",
    "ssize_t": "Long",
    "uint8_t": "Uchar",
    "uint32_t": "Uint",
    "uint64_t": "LongLong",
    "uintptr_t": "Ulong",
    "unsigned char": "Uchar",
    "unsigned int": "Uint",
    "unsigned long long": "UlongLong",
    "unsigned long": "Ulong",
    "unsigned short": "Ushort",
    "void": "",
    "wchar_t": "Wchar",
}

GO_KEYWORDS = {
    "break", "default", "func", "interface", "select",
    "case", "defer", "go", "map", "struct", "string",
    "make", "new", "nil",
    "chan", "else", "goto", "package", "switch",
    "const", "fallthrough", "if", "range", "type",
    "continue", "for", "import", "return", "var"
}

C_KEYWORDS = {
    "const", "struct", "enum", "union", "void", "int", "unsigned",
    "char", "short", "long", "float", "double", "signed", "volatile",
    "restrict", "inline", "extern", "static", "auto", "register",
}

CTYPE_MAPPING = {
    "_PyInterpreterFrame": "struct{}",
    "PyInitConfig": "struct{}",
    "PyMonitoringState": "struct{}",
    "PyUnicodeWriter": "struct{}",
    "PyDateTime_Date": "struct{}",
    "PyDateTime_DateTime": "struct{}",
    "PyDateTime_Delta": "struct{}",
    "PyDateTime_Time": "struct{}",
    "PyTime_t": "LongLong",
}


def capitalize_first(s):
    return s[:1].upper() + s[1:] if s else s


def ctogo(name: str, capitalize: bool = True) -> str:
    if name == "__llgo_va_list":
        return name  # Keep __llgo_va_list unchanged
    if name.startswith("struct "):
        name = name[7:].strip()
    parts = name.split("_")
    if capitalize:
        result = "".join(capitalize_first(part) for part in parts)
    else:
        result = parts[0] + "".join(capitalize_first(part)
                                    for part in parts[1:])
    # Only remove "Py" if the name starts with it and is longer than 2 characters
    if result.startswith("Py") and len(result) > 2:
        result = result[2:]
    # If the result is a Go keyword, add a suffix
    if result.lower() in GO_KEYWORDS:
        result += "_"
    return result


@dataclass
class VersionInfo:
    version_added: Optional[str] = None
    version_changed: list[str] = field(default_factory=list)


@dataclass
class Type:
    name: str

    def __str__(self):
        return self.name

    def to_go(self):
        return C_TO_GO_TYPE_MAP.get(self.name, ctogo(self.name))


@dataclass
class Pointer:
    type: 'Type' | 'Pointer'

    def __str__(self):
        return f"Pointer({self.type})"

    def to_go(self):
        if isinstance(self.type, Type):
            if self.type.name == "void":
                return "Pointer"
            if self.type.name == "FILE":
                return "FilePtr"
        return f"*{self.type.to_go()}"


@dataclass
class CParameter:
    type: Type | Pointer
    name: str = ""

    def to_go(self):
        if self.name:
            return f"{ctogo(self.name, capitalize=False)} {self.type.to_go()}"
        else:
            return self.type.to_go()

    def __str__(self):
        if self.name:
            return f"{self.name}: {self.type}"
        else:
            return str(self.type)


def generate_param_names(parameters: list[CParameter]) -> list[str]:
    params = []
    used_names = set()
    has_named_param = any(param.name for param in parameters)

    for i, param in enumerate(parameters):
        param_name = param.name
        if not param_name:
            if has_named_param:
                # Generate a unique name for the parameter only if some parameters are named
                base_name = f"arg{i}"
                param_name = base_name
                counter = 0
                while param_name in used_names:
                    counter += 1
                    param_name = f"{base_name}_{counter}"

        if param_name:
            used_names.add(param_name)
            params.append(
                f"{ctogo(param_name, capitalize=False)} {param.type.to_go()}")
        else:
            params.append(param.type.to_go())

    return params


@dataclass
class FunctionPointer:
    return_type: Type | Pointer | 'FunctionPointer'
    parameters: list[CParameter]
    name: str = ""

    def __str__(self):
        params = ", ".join(str(param) for param in self.parameters)
        return f"func({params}) {self.return_type}"

    def to_go(self):
        params = generate_param_names(self.parameters)
        params_str = ", ".join(params)
        return_type = self.return_type.to_go()
        if return_type == "":
            return f"func({params_str})"
        else:
            return f"func({params_str}) {return_type}"


@dataclass
class CFunctionPrototype:
    return_type: Type | Pointer
    name: str
    parameters: list[CParameter]

    def to_go(self):
        linkname = f"//go:linkname {ctogo(self.name)} {self.name}"
        params = generate_param_names(self.parameters)
        params_str = ", ".join(params)
        sig = f"{linkname}\nfunc {ctogo(self.name)}("
        if not self.parameters:
            sig += ")"
        else:
            sig += f"{params_str})"
        ret = self.return_type.to_go()
        if ret != "":
            sig += f" {ret}"
        return sig

    def IsVaList(self) -> bool:
        if self.parameters:
            last_param = self.parameters[-1]
            return isinstance(last_param.type, Type) and last_param.type.name == "va_list"
        return False


@dataclass
class CFunction:
    prototype: str
    doc: str
    version_info: VersionInfo = field(default_factory=VersionInfo)
    parsed_prototype: CFunctionPrototype = field(
        default_factory=lambda: CFunctionPrototype(Type(""), "", []))


@ dataclass
class CType:
    prototype: str
    name: str
    doc: str
    version_info: VersionInfo = field(default_factory=VersionInfo)
    parsed_type: Type | Pointer | FunctionPointer = field(
        default_factory=lambda: Type(""))

    def to_go(self):
        if self.name.startswith("_"):
            return f"type {ctogo(self.name)} struct{{}}"
        if self.name in CTYPE_MAPPING:
            return f"type {ctogo(self.name)} {CTYPE_MAPPING[self.name]}"
        if isinstance(self.parsed_type, FunctionPointer):
            return f"// llgo:type C\ntype {ctogo(self.name)} {self.parsed_type.to_go()}"
        return f"type {ctogo(self.name)} = C.{self.name}"


C_TO_GO_STATIC_CAST = set(["PyTime_t"])


@ dataclass
class CVar:
    prototype: str
    type: Type | Pointer | FunctionPointer
    name: str
    doc: str
    version_info: VersionInfo = field(default_factory=VersionInfo)

    def to_go(self):
        name = ctogo(self.name)
        if isinstance(self.type, FunctionPointer):
            return f"var {ctogo(self.name)} {self.type.to_go()}"
        ret_stmt = f"return *(*{self.type.to_go()})(Pointer(&C.{self.name}))"
        if isinstance(self.type, Type):
            if C_TO_GO_TYPE_MAP.get(self.type.name, "") != "" or self.type.name in C_TO_GO_STATIC_CAST:
                ret_stmt = f"return {self.type.to_go()}(C.{self.name})"
        return f"func {ctogo(self.name)}() {self.type.to_go()} {{\n  {ret_stmt}\n}}"


def parse_c_type(tokens: list[str], index: int = 0) -> tuple[Type | Pointer, int]:
    print(f"tokens: {tokens}")
    base_type = Type("")
    while index < len(tokens):
        if tokens[index] == '*':
            base_type = Pointer(base_type)
        elif tokens[index].lower() == 'const':
            # Ignore const keyword
            pass
        elif isinstance(base_type, Type) and not base_type.name:
            base_type.name = tokens[index]
        elif isinstance(base_type, Type):
            base_type.name += " " + tokens[index]
        else:
            inner_type = base_type
            while isinstance(inner_type.type, Pointer):
                inner_type = inner_type.type
            if isinstance(inner_type.type, Type):
                if inner_type.type.name:
                    inner_type.type.name += " " + tokens[index]
                else:
                    inner_type.type.name = tokens[index]
            else:
                # If inner_type.type is not Type, create a new Type
                inner_type.type = Type(tokens[index])
        index += 1
        if index < len(tokens) and tokens[index] in ['(', ')', ',']:
            break
    return base_type, index


def is_valid_identifier(token: str) -> bool:
    return re.match(r'^[a-zA-Z_]\w*$', token) and token not in C_TO_GO_TYPE_MAP and token not in C_KEYWORDS


def parse_function_pointer(tokens: list[str], index: int = 0) -> tuple[FunctionPointer, int]:
    return_type, index = parse_c_type(tokens, index)

    # Skip to the function pointer name
    while index < len(tokens) and tokens[index] != '(':
        index += 1
    if index < len(tokens) and tokens[index] == '(':
        index += 1
    if index < len(tokens) and tokens[index] == '*':
        index += 1

    func_name = tokens[index] if index < len(tokens) else ""
    index += 1

    # Skip to the parameter list
    while index < len(tokens) and tokens[index] != '(':
        index += 1
    if index < len(tokens) and tokens[index] == '(':
        index += 1

    params = []
    # Check if the parameter list is just 'void'
    if index < len(tokens) and tokens[index] == 'void' and tokens[index + 1] == ')':
        index += 2  # Skip 'void' and ')'
    else:
        while index < len(tokens) and tokens[index] != ')':
            param_tokens = []
            while index < len(tokens) and tokens[index] not in [',', ')']:
                param_tokens.append(tokens[index])
                index += 1

            if param_tokens:
                if is_valid_identifier(param_tokens[-1]):
                    param_name = param_tokens.pop()
                else:
                    param_name = ""
                param_type, _ = parse_c_type(param_tokens)
                params.append(CParameter(param_type, param_name))

            if index < len(tokens) and tokens[index] == ',':
                index += 1

    if index < len(tokens) and tokens[index] == ')':
        index += 1

    return FunctionPointer(return_type, params, func_name), index


def split_token_groups(tokens: list[str]) -> list[list[str] | list]:
    def do_split_token_groups(tokens: list[str], group: list[any]):
        while tokens:
            token = tokens.pop(0)
            if token == '(':
                sub_group = []
                do_split_token_groups(tokens, sub_group)
                group.append(sub_group)
            elif token == ')':
                break
            else:
                group.append(token)
        return group
    return do_split_token_groups(tokens.copy(), [])


def parse_c_prototype(prototype: str) -> CFunctionPrototype | Type | Pointer | FunctionPointer:
    tokens = re.findall(r'\w+|\*|\(|\)|,|\.\.\.', prototype)
    token_groups = split_token_groups(tokens)
    sub_group_count = sum(
        1 for group in token_groups if isinstance(group, list))
    print(f"prototype: {prototype}")

    if sub_group_count == 0:
        # type or var declaration
        return parse_c_type(tokens)[0]
    elif sub_group_count == 1:
        # function declaration
        return_type_tokens = [
            token for token in token_groups if not isinstance(token, list)]
        func_name = return_type_tokens.pop()
        return_type, _ = parse_c_type(return_type_tokens)

        params = []
        param_group = next(
            group for group in token_groups if isinstance(group, list))
        if param_group == ['void']:
            pass  # No parameters
        else:
            params = parse_parameters(param_group)

        return CFunctionPrototype(
            return_type=return_type,
            name=func_name,
            parameters=params
        )
    else:
        # function pointer or function type
        return_type_tokens = token_groups[0]
        func_ptr_name = token_groups[1][1] if len(token_groups[1]) > 1 else ""
        param_group = token_groups[-1]

        return_type, _ = parse_c_type(return_type_tokens)
        params = parse_parameters(param_group)

        return FunctionPointer(
            return_type=return_type,
            parameters=params,
            name=func_ptr_name
        )


def parse_parameters(param_tokens: list[str | list]) -> list[CParameter]:
    params = []
    current_param = []
    paren_count = 0

    # First, split the parameters by comma
    for token in param_tokens:
        if isinstance(token, list):
            current_param.append(token)
            continue
        if token == '(':
            paren_count += 1
        elif token == ')':
            paren_count -= 1

        if token == ',' and paren_count == 0:
            if current_param:
                params.append(current_param)
                current_param = []
        else:
            current_param.append(token)

    if current_param:
        params.append(current_param)

    # Now process each parameter individually
    return [parse_single_parameter(param) for param in params if param != ['void']]


def parse_single_parameter(param_tokens: list[str | list]) -> CParameter:
    if not param_tokens:
        return CParameter(Type(""), "")

    if param_tokens == ['...']:
        return CParameter(Type("...any"), "__llgo_va_list")

    param_name = ""
    # If the last token is a valid identifier and not a type name or keyword, consider it as the parameter name
    if (len(param_tokens) > 1 and
        isinstance(param_tokens[-1], str) and
        re.match(r'^[a-zA-Z_]\w*$', param_tokens[-1]) and
        param_tokens[-1] not in C_TO_GO_TYPE_MAP and
            param_tokens[-1] not in {'const', 'struct', 'enum', 'union'}):
        param_name = param_tokens.pop()

    if param_tokens and isinstance(param_tokens[-1], list):
        # This is a function pointer parameter
        func_ptr = parse_function_pointer_param(param_tokens)
        # Use the function pointer name as the parameter name if it exists
        if func_ptr.name:
            param_name = func_ptr.name
        return CParameter(func_ptr, param_name)
    else:
        param_type, _ = parse_c_type(param_tokens)
        return CParameter(param_type, param_name)


def parse_function_pointer_param(param_tokens: list[str | list]) -> FunctionPointer:
    # Find the index of the nested list (function pointer)
    func_ptr_index = next((i for i, token in enumerate(
        param_tokens) if isinstance(token, list)), -1)

    if func_ptr_index == -1:
        # If no nested list is found, treat it as a regular type
        param_type, _ = parse_c_type(param_tokens)
        return FunctionPointer(param_type, [], "")

    # Exclude the function pointer and its parameters
    return_type_tokens = param_tokens[:func_ptr_index]
    return_type, _ = parse_c_type(return_type_tokens)

    func_ptr_name = ""
    if isinstance(param_tokens[func_ptr_index], list) and len(param_tokens[func_ptr_index]) > 1:
        func_ptr_name = param_tokens[func_ptr_index][1]

    params = []
    if func_ptr_index + 1 < len(param_tokens) and isinstance(param_tokens[func_ptr_index + 1], list):
        params = parse_parameters(param_tokens[func_ptr_index + 1])

    return FunctionPointer(return_type, params, func_ptr_name)


def parse_c_var(var_info: str) -> tuple[Type | Pointer | FunctionPointer, str]:
    tokens = re.findall(r'\w+|\*|\(|\)|,', var_info)

    if '(' in var_info and '*' in var_info:
        # This is a function pointer variable
        func_ptr, _ = parse_function_pointer(tokens)
        # Extract the variable name
        var_name = var_info.split('(*')[1].split(')')[0]
        return func_ptr, var_name.strip()

    # This is a regular variable
    var_name = tokens.pop()  # 最后一个 token 是变量名
    var_type, _ = parse_c_type(tokens)
    return var_type, var_name.strip()


class CustomRSTParser:
    def __init__(self, content):
        self.content = content
        self.functions = []
        self.types = []
        self.vars = []
        self.structs = []

    def parse(self):
        lines = self.content.split('\n')
        i = 0
        while i < len(lines):
            line = lines[i].strip()
            if line.startswith('.. c:function::'):
                i = self._parse_section(
                    lines, i, '.. c:function::', self._parse_function)
            elif line.startswith('.. c:type::'):
                i = self._parse_section(
                    lines, i, '.. c:type::', self._parse_type)
            elif line.startswith('.. c:var::'):
                i = self._parse_section(
                    lines, i, '.. c:var::', self._parse_var)
            elif line.startswith('.. c:struct::'):
                i = self._parse_section(
                    lines, i, '.. c:struct::', self._parse_struct)
            else:
                i += 1

    def _parse_section(self, lines, start, prefix, parse_func):
        section_lines = [lines[start].split(prefix)[1].strip()]
        i = start + 1
        while i < len(lines):
            line = lines[i].strip()
            if line.startswith('.. c:'):
                break
            if line or section_lines[-1]:  # 保留空行，除非是连续的空行
                section_lines.append(lines[i])
            i += 1
        parse_func(section_lines)
        return i

    def _parse_function(self, section_lines):
        prototype = section_lines[0]
        doc, version_info = self._parse_version_info(section_lines[1:])
        parsed_prototype = parse_c_prototype(prototype)
        self.functions.append(CFunction(prototype=prototype, doc='\n'.join(doc).strip(),
                                        version_info=version_info, parsed_prototype=parsed_prototype))

    def _parse_type(self, section_lines):
        prototype = section_lines[0]
        tokens = re.findall(r'\w+|\*|\(|\)|,', prototype)
        if '(' in prototype and '*' in prototype:
            parsed_type, _ = parse_function_pointer(tokens)
            name = prototype.split('(*')[1].split(')')[0]
        else:
            parsed_type, _ = parse_c_type(tokens)
            name = tokens[-1]
        doc, version_info = self._parse_version_info(section_lines[1:])
        self.types.append(CType(prototype=prototype, name=name, doc='\n'.join(doc).strip(),
                                version_info=version_info, parsed_type=parsed_type))

    def _parse_var(self, section_lines):
        prototype = section_lines[0]
        var_type, var_name = parse_c_var(prototype)
        doc, version_info = self._parse_version_info(section_lines[1:])
        self.vars.append(CVar(prototype=prototype, type=var_type, name=var_name,
                              doc='\n'.join(doc).strip(), version_info=version_info))

    def _parse_struct(self, section_lines):
        prototype = section_lines[0]
        name = prototype.split()[-1]
        doc, version_info = self._parse_version_info(section_lines[1:])
        self.structs.append(CType(prototype=f"struct {prototype}", name=name,
                                  doc='\n'.join(doc).strip(), version_info=version_info,
                                  parsed_type=Type(f"struct {name}")))

    def _parse_version_info(self, lines):
        version_info = VersionInfo()
        doc = []
        parsing_version_info = False
        current_version_info = ""

        for line in lines:
            line = line.strip()
            if line.startswith('.. versionadded::') or line.startswith('.. versionchanged::'):
                if parsing_version_info:
                    self._process_version_info(
                        current_version_info, version_info)
                parsing_version_info = True
                current_version_info = line
            elif parsing_version_info and line.startswith('   '):
                current_version_info += ' ' + line.strip()
            else:
                if parsing_version_info:
                    self._process_version_info(
                        current_version_info, version_info)
                    parsing_version_info = False
                    current_version_info = ""
                doc.append(line)

        if parsing_version_info:
            self._process_version_info(current_version_info, version_info)

        return doc, version_info

    def _process_version_info(self, info, version_info):
        parts = info.split('::')
        if len(parts) > 1:
            if info.startswith('.. versionadded::'):
                version_info.version_added = '::'.join(parts[1:]).strip()
            elif info.startswith('.. versionchanged::'):
                version_info.version_changed.append(
                    '::'.join(parts[1:]).strip())
        else:
            print(f"Warning: Invalid version info format: {info}")


def parse_rst_content(content):
    parser = CustomRSTParser(content)
    parser.parse()
    # Add parser.structs here
    return parser.functions, parser.types, parser.vars, parser.structs


def print_version_info(item):
    if item.version_info.version_added:
        print(f"Version added: {item.version_info.version_added}")
    if item.version_info.version_changed:
        print("Version changed:")
        for change in item.version_info.version_changed:
            print(f"  - {change}")


def comment(doc: str) -> str:
    return '\n'.join(f"// {line}" for line in doc.splitlines())


def parse_params(tokens: list[str], start: int) -> tuple[list[Type | Pointer | FunctionPointer], int]:
    params = []
    i = start
    while i < len(tokens) and tokens[i] != ')':
        param_type, i = parse_c_type(tokens, i)
        if i < len(tokens) and tokens[i] not in [',', ')']:
            # Skip parameter name
            i += 1
        params.append(param_type)
        if i < len(tokens) and tokens[i] == ',':
            i += 1
    return params, i + 1 if i < len(tokens) else i


def main():
    if len(sys.argv) != 3:
        print("Usage: python gen.py <path_to_rst_file> <output_go_file>")
        sys.exit(1)

    rst_file_path = sys.argv[1]
    with open(rst_file_path, 'r', encoding='utf-8') as file:
        rst_content = file.read()

    output_go_file = sys.argv[2]
    with open(output_go_file, 'w', encoding='utf-8') as file:
        file.write(
            """package py

/*
#include <Python.h>
*/
import "C"
import (
  _ "unsafe"
)

""")
        cfunctions, ctypes, cvars, cstructs = parse_rst_content(rst_content)

        # 将结构体添到类型列表中
        ctypes.extend(cstructs)

        # Use the existing print statements to display the results
        print("Functions:")
        for func in cfunctions:
            if func.parsed_prototype.IsVaList():
                continue
            if func.version_info.version_added and func.version_info.version_added in ["3.13", "3.14"]:
                continue
            if func.parsed_prototype.name in set(["PyDescr_NewWrapper"]):
                continue
            file.write(f"{comment(func.prototype)}\n")
            file.write(f"{comment(func.doc)}\n//\n")
            file.write(func.parsed_prototype.to_go())
            file.write("\n\n")
            print(f"Prototype: {func.prototype}")
            print(repr(func))
            print("Parsed Prototype:")
            print(f"  Return Type: {func.parsed_prototype.return_type}")
            print(f"  Function Name: {func.parsed_prototype.name}")
            print("  Parameters:")
            for param in func.parsed_prototype.parameters:
                print(f"    - Type: {param.type}, Name: {param.name}")
            print(f"Go Function: {func.parsed_prototype.to_go()}")
            print(f"Documentation: {func.doc}")
            print_version_info(func)
            print()

        print("Types:")
        for ctype in ctypes:
            name = ctogo(ctype.name)
            if name in set(["Object", "VarObject", "CFunction", "MemberDef", "GetSetDef",
                            "TypeObject", "ModuleDefSlot", "ModuleDef", "MethodDef",
                            "TypeGenericNew", "TypeReady"]):
                continue
            if name in set(["Capsule", "CFunctionFast", "CFunctionFastWithKeywords"]):
                continue
            if ctype.version_info.version_added and ctype.version_info.version_added in ["3.13", "3.14"]:
                continue
            file.write(f"{comment(ctype.prototype)}\n")
            file.write(f"{comment(ctype.doc)}\n")
            file.write(f"{ctype.to_go()}\n")
            file.write("\n")
            print(f"Prototype: {ctype.prototype}")
            print(f"Name: {ctype.name}")
            print(f"Parsed Type: {ctype.parsed_type}")
            print(repr(ctype))
            print(f"Go Type: {ctype.to_go()}")
            print(f"Documentation: {ctype.doc}")
            print_version_info(ctype)
            print()

        print("Variables:")
        for var in cvars:
            name = ctogo(var.name)
            if var.version_info.version_added and var.version_info.version_added in ["3.13", "3.14"]:
                continue
            if name.startswith("DateTime"):
                continue
            if name in set(["TimeMIN", "TimeMAX", "RefTracerCREATE", "RefTracerDESTROY", "LegacyWindowsFSEncodingFlag", "LegacyWindowsStdioFlag",
                            "None", "True", "False", "NoneStruct", "NotImplemented", "Ellipsis",
                            "SingleInput", "FileInput", "EvalInput"]):
                continue
            file.write(f"{comment(var.prototype)}\n")
            file.write(f"{comment(var.doc)}\n")
            file.write(var.to_go())
            file.write("\n\n")

            print(f"Prototype: {var.prototype}")
            print(repr(var))
            print(f"Type: {var.type}")
            print(f"Name: {var.name}")
            print(f"Documentation: {var.doc}")
            print_version_info(var)
            print()


if __name__ == "__main__":
    main()
