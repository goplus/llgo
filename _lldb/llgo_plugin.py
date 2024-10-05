# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring

from typing import List, Optional, Dict, Any, Tuple
import re
import lldb


def log(*args: Any, **kwargs: Any) -> None:
    print(*args, **kwargs, flush=True)


def __lldb_init_module(debugger: lldb.SBDebugger, _: Dict[str, Any]) -> None:
    debugger.HandleCommand(
        'command script add -f llgo_plugin.print_go_expression p')
    debugger.HandleCommand(
        'command script add -f llgo_plugin.print_all_variables v')


def is_llgo_compiler(_target: lldb.SBTarget) -> bool:
    return True


def get_indexed_value(value: lldb.SBValue, index: int) -> Optional[lldb.SBValue]:
    if not value or not value.IsValid():
        return None

    type_name = value.GetType().GetName()

    if type_name.startswith('[]'):  # Slice
        data_ptr = value.GetChildMemberWithName('data')
        element_type = data_ptr.GetType().GetPointeeType()
        element_size = element_type.GetByteSize()
        ptr_value = int(data_ptr.GetValue(), 16)
        element_address = ptr_value + index * element_size
        target = value.GetTarget()
        return target.CreateValueFromAddress(
            f"element_{index}", lldb.SBAddress(element_address, target), element_type)
    elif value.GetType().IsArrayType():  # Array
        return value.GetChildAtIndex(index)
    else:
        return None


def evaluate_expression(frame: lldb.SBFrame, expression: str) -> Optional[lldb.SBValue]:
    parts = re.findall(r'\*|\w+|\(|\)|\[.*?\]|\.', expression)

    def evaluate_part(i: int) -> Tuple[Optional[lldb.SBValue], int]:
        nonlocal parts
        value: Optional[lldb.SBValue] = None
        while i < len(parts):
            part = parts[i]

            if part == '*':
                sub_value, i = evaluate_part(i + 1)
                if sub_value and sub_value.IsValid():
                    value = sub_value.Dereference()
                else:
                    return None, i
            elif part == '(':
                depth = 1
                j = i + 1
                while j < len(parts) and depth > 0:
                    if parts[j] == '(':
                        depth += 1
                    elif parts[j] == ')':
                        depth -= 1
                    j += 1
                value, i = evaluate_part(i + 1)
                i = j - 1
            elif part == ')':
                return value, i + 1
            elif part == '.':
                if value is None:
                    value = frame.FindVariable(parts[i+1])
                else:
                    value = value.GetChildMemberWithName(parts[i+1])
                i += 2
            elif part.startswith('['):
                index = int(part[1:-1])
                value = get_indexed_value(value, index)
                i += 1
            else:
                if value is None:
                    value = frame.FindVariable(part)
                else:
                    value = value.GetChildMemberWithName(part)
                i += 1

            if not value or not value.IsValid():
                return None, i

        return value, i

    value, _ = evaluate_part(0)
    return value


def print_go_expression(debugger: lldb.SBDebugger, command: str, result: lldb.SBCommandReturnObject, _internal_dict: Dict[str, Any]) -> None:
    frame = debugger.GetSelectedTarget().GetProcess(
    ).GetSelectedThread().GetSelectedFrame()
    value = evaluate_expression(frame, command)
    if value and value.IsValid():
        result.AppendMessage(format_value(value, debugger))
    else:
        result.AppendMessage(
            f"Error: Unable to evaluate expression '{command}'")


def print_all_variables(debugger: lldb.SBDebugger, _command: str, result: lldb.SBCommandReturnObject, _internal_dict: Dict[str, Any]) -> None:
    target = debugger.GetSelectedTarget()
    if not is_llgo_compiler(target):
        result.AppendMessage("Not a LLGo compiled binary.")
        return

    frame = debugger.GetSelectedTarget().GetProcess(
    ).GetSelectedThread().GetSelectedFrame()
    variables = frame.GetVariables(True, True, True, True)

    output: List[str] = []
    for var in variables:
        type_name = map_type_name(var.GetType().GetName())
        formatted = format_value(var, debugger, include_type=False, indent=0)
        output.append(f"var {var.GetName()} {type_name} = {formatted}")

    result.AppendMessage("\n".join(output))


def is_pointer(frame: lldb.SBFrame, var_name: str) -> bool:
    var = frame.FindVariable(var_name)
    return var.IsValid() and var.GetType().IsPointerType()


def format_value(var: lldb.SBValue, debugger: lldb.SBDebugger, include_type: bool = True, indent: int = 0) -> str:
    if not var.IsValid():
        return "<variable not available>"

    var_type = var.GetType()
    type_class = var_type.GetTypeClass()
    type_name = map_type_name(var_type.GetName())

    # Handle typedef types
    original_type_name = type_name
    while var_type.IsTypedefType():
        var_type = var_type.GetTypedefedType()
        type_name = map_type_name(var_type.GetName())
        type_class = var_type.GetTypeClass()

    if var_type.IsPointerType():
        return format_pointer(var, debugger, indent, original_type_name)

    if type_name.startswith('[]'):  # Slice
        return format_slice(var, debugger, indent)
    elif var_type.IsArrayType():
        return format_array(var, debugger, indent)
    elif type_name == 'string':  # String
        return format_string(var)
    elif type_class in [lldb.eTypeClassStruct, lldb.eTypeClassClass]:
        return format_struct(var, debugger, include_type, indent, original_type_name)
    else:
        value = var.GetValue()
        summary = var.GetSummary()
        if value is not None:
            return f"{value}" if include_type else str(value)
        elif summary is not None:
            return f"{summary}" if include_type else summary
        else:
            return "<variable not available>"


def format_slice(var: lldb.SBValue, debugger: lldb.SBDebugger, indent: int) -> str:
    length = var.GetChildMemberWithName('len').GetValue()
    if length is None:
        return "<variable not available>"
    length = int(length)
    data_ptr = var.GetChildMemberWithName('data')
    elements: List[str] = []

    ptr_value = int(data_ptr.GetValue(), 16)
    element_type = data_ptr.GetType().GetPointeeType()
    element_size = element_type.GetByteSize()

    target = debugger.GetSelectedTarget()
    indent_str = '  ' * indent
    next_indent_str = '  ' * (indent + 1)

    for i in range(length):
        element_address = ptr_value + i * element_size
        element = target.CreateValueFromAddress(
            f"element_{i}", lldb.SBAddress(element_address, target), element_type)
        value = format_value(
            element, debugger, include_type=False, indent=indent+1)
        elements.append(value)

    type_name = var.GetType().GetName()

    if len(elements) > 5:  # 如果元素数量大于5，则进行折行显示
        result = f"{type_name}{{\n{next_indent_str}" + \
            f",\n{next_indent_str}".join(elements) + f"\n{indent_str}}}"
    else:
        result = f"{type_name}{{{', '.join(elements)}}}"

    return result


def format_array(var: lldb.SBValue, debugger: lldb.SBDebugger, indent: int) -> str:
    elements: List[str] = []
    indent_str = '  ' * indent
    next_indent_str = '  ' * (indent + 1)

    for i in range(var.GetNumChildren()):
        value = format_value(var.GetChildAtIndex(
            i), debugger, include_type=False, indent=indent+1)
        elements.append(value)

    array_size = var.GetNumChildren()
    element_type = map_type_name(var.GetType().GetArrayElementType().GetName())
    type_name = f"[{array_size}]{element_type}"

    if len(elements) > 5:  # wrap line if too many elements
        return f"{type_name}{{\n{next_indent_str}" + f",\n{next_indent_str}".join(elements) + f"\n{indent_str}}}"
    else:
        return f"{type_name}{{{', '.join(elements)}}}"


def format_string(var: lldb.SBValue) -> str:
    summary = var.GetSummary()
    if summary is not None:
        return summary  # Keep the quotes
    else:
        data = var.GetChildMemberWithName('data').GetValue()
        length = var.GetChildMemberWithName('len').GetValue()
        if data and length:
            length = int(length)
            error = lldb.SBError()
            return '"%s"' % var.process.ReadCStringFromMemory(int(data, 16), length + 1, error)
    return "<variable not available>"


def format_struct(var: lldb.SBValue, debugger: lldb.SBDebugger, include_type: bool = True, indent: int = 0, type_name: str = "") -> str:
    children: List[str] = []
    indent_str = '  ' * indent
    next_indent_str = '  ' * (indent + 1)

    for i in range(var.GetNumChildren()):
        child = var.GetChildAtIndex(i)
        child_name = child.GetName()
        child_value = format_value(
            child, debugger, include_type=False, indent=indent+1)
        children.append(f"{child_name} = {child_value}")

    if len(children) > 5:  # 如果字段数量大于5，则进行折行显示
        struct_content = "{\n" + ",\n".join(
            [f"{next_indent_str}{child}" for child in children]) + f"\n{indent_str}}}"
    else:
        struct_content = f"{{{', '.join(children)}}}"

    if include_type:
        return f"{type_name}{struct_content}"
    else:
        return struct_content


def format_pointer(var: lldb.SBValue, _debugger: lldb.SBDebugger, _indent: int, _type_name: str) -> str:
    if not var.IsValid() or var.GetValueAsUnsigned() == 0:
        return "<variable not available>"
    return var.GetValue()  # Return the address as a string


def map_type_name(type_name: str) -> str:
    # Handle pointer types
    if type_name.endswith('*'):
        base_type = type_name[:-1].strip()
        mapped_base_type = map_type_name(base_type)
        return f"*{mapped_base_type}"

    # Map other types
    type_mapping: Dict[str, str] = {
        'long': 'int',
        'void': 'unsafe.Pointer',
        'char': 'byte',
        'short': 'int16',
        'int': 'int32',
        'long long': 'int64',
        'unsigned char': 'uint8',
        'unsigned short': 'uint16',
        'unsigned int': 'uint32',
        'unsigned long': 'uint',
        'unsigned long long': 'uint64',
        'float': 'float32',
        'double': 'float64',
    }

    for c_type, go_type in type_mapping.items():
        if type_name.startswith(c_type):
            return type_name.replace(c_type, go_type, 1)

    return type_name
