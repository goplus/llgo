# pylint: disable=missing-module-docstring,missing-class-docstring,missing-function-docstring

import re
import lldb


def __lldb_init_module(debugger, _):
    debugger.HandleCommand(
        'command script add -f llgo_plugin.format_go_variable gv')
    debugger.HandleCommand(
        'command script add -f llgo_plugin.print_go_expression p')
    debugger.HandleCommand(
        'command script add -f llgo_plugin.print_all_variables v')


def is_llgo_compiler(target):
    return True
    module = target.GetModuleAtIndex(0)

    # Check for specific sections or symbols that might be unique to LLGo
    llgo_indicators = ["__llgo_", "runtime.llgo", "llgo."]

    # Check sections
    for i in range(module.GetNumSections()):
        section = module.GetSectionAtIndex(i)
        section_name = section.GetName()
        if any(indicator in section_name for indicator in llgo_indicators):
            return True

    # Check symbols
    for symbol in module.symbols:
        symbol_name = symbol.GetName()
        if any(indicator in symbol_name for indicator in llgo_indicators):
            return True

    # Check compile units
    for i in range(module.GetNumCompileUnits()):
        cu = module.GetCompileUnitAtIndex(i)
        cu_name = cu.GetFileSpec().GetFilename()
        print(f"Compile unit: {cu_name}")
        # You can add more checks here if needed

    print("LLGo Compiler not detected")
    return False


def format_go_variable(debugger, command, result, _internal_dict):
    target = debugger.GetSelectedTarget()
    if not is_llgo_compiler(target):
        result.AppendMessage("Not a LLGo compiled binary.")
        return

    frame = debugger.GetSelectedTarget().GetProcess(
    ).GetSelectedThread().GetSelectedFrame()
    var = frame.EvaluateExpression(command)

    if var.error.Success():
        formatted = format_value(var, debugger)
        result.AppendMessage(formatted)
    else:
        result.AppendMessage(f"Error: {var.error}")


def print_go_expression(debugger, command, result, _internal_dict):
    target = debugger.GetSelectedTarget()
    if not is_llgo_compiler(target):
        result.AppendMessage("Not a LLGo compiled binary.")
        return

    frame = debugger.GetSelectedTarget().GetProcess(
    ).GetSelectedThread().GetSelectedFrame()

    # Handle Go-style pointer member access
    command = re.sub(r'(\w+)\.(\w+)', lambda m: f'(*{m.group(1)}).{m.group(
        2)}' if is_pointer(frame, m.group(1)) else m.group(0), command)

    var = frame.EvaluateExpression(command)

    if var.error.Success():
        formatted = format_value(var, debugger)
        result.AppendMessage(formatted)
    else:
        result.AppendMessage(f"Error: {var.error}")


def print_all_variables(debugger, command, result, _internal_dict):
    target = debugger.GetSelectedTarget()
    if not is_llgo_compiler(target):
        result.AppendMessage("Not a LLGo compiled binary.")
        return

    frame = debugger.GetSelectedTarget().GetProcess(
    ).GetSelectedThread().GetSelectedFrame()
    variables = frame.GetVariables(True, True, True, False)

    output = []
    for var in variables:
        type_name = map_type_name(var.GetType().GetName())
        formatted = format_value(var, debugger, include_type=False, indent=0)
        output.append(f"var {var.GetName()} {type_name} = {formatted}")

    result.AppendMessage("\n".join(output))


def is_pointer(frame, var_name):
    var = frame.FindVariable(var_name)
    return var.IsValid() and var.GetType().IsPointerType()

# Format functions extracted from main.py


def format_value(var, debugger, include_type=True, indent=0):
    if not var.IsValid():
        return "<variable not available>"

    var_type = var.GetType()
    type_class = var_type.GetTypeClass()
    type_name = map_type_name(var_type.GetName())

    if var_type.IsPointerType():
        return format_pointer(var, debugger, indent, type_name)

    if type_name.startswith('[]'):  # Slice
        return format_slice(var, debugger, indent)
    elif var_type.IsArrayType():
        return format_array(var, debugger, indent)
    elif type_name == 'string':  # String
        return format_string(var)
    elif type_class in [lldb.eTypeClassStruct, lldb.eTypeClassClass]:
        return format_struct(var, debugger, include_type, indent, type_name)
    else:
        value = var.GetValue()
        summary = var.GetSummary()
        if value is not None:
            return f"{value}" if include_type else str(value)
        elif summary is not None:
            return f"{summary}" if include_type else summary
        else:
            return "<variable not available>"


def format_slice(var, debugger, indent):
    length = int(var.GetChildMemberWithName('len').GetValue())
    data_ptr = var.GetChildMemberWithName('data')
    elements = []

    ptr_value = int(data_ptr.GetValue(), 16)
    element_type = data_ptr.GetType().GetPointeeType()
    element_size = element_type.GetByteSize()

    target = debugger.GetSelectedTarget()
    for i in range(length):
        element_address = ptr_value + i * element_size
        element = target.CreateValueFromAddress(
            f"element_{i}", lldb.SBAddress(element_address, target), element_type)
        value = format_value(
            element, debugger, include_type=False, indent=indent+1)
        elements.append(value)

    type_name = var.GetType().GetName()
    indent_str = '  ' * indent
    next_indent_str = '  ' * (indent + 1)

    if len(elements) > 5:  # For long slices, print only first and last few elements
        result = f"{type_name}{{\n{next_indent_str}{', '.join(elements[:3])},\n{
            next_indent_str}...,\n{next_indent_str}{', '.join(elements[-2:])}\n{indent_str}}}"
    else:
        result = f"{type_name}{{\n{next_indent_str}{', '.join(elements)}\n{
            indent_str}}}"

    return result


def format_array(var, debugger, indent):
    elements = []
    for i in range(var.GetNumChildren()):
        value = format_value(var.GetChildAtIndex(
            i), debugger, include_type=False, indent=indent+1)
        elements.append(value)
    array_size = var.GetNumChildren()
    element_type = map_type_name(var.GetType().GetArrayElementType().GetName())
    type_name = f"[{array_size}]{element_type}"
    indent_str = '  ' * indent
    next_indent_str = '  ' * (indent + 1)

    if len(elements) > 5:  # For long arrays, print only first and last few elements
        result = f"{type_name}{{\n{next_indent_str}{', '.join(elements[:3])},\n{
            next_indent_str}...,\n{next_indent_str}{', '.join(elements[-2:])},\n{indent_str}}}"
    else:
        result = f"{type_name}{{\n{next_indent_str}{', '.join(elements)},\n{
            indent_str}}}"

    return result


def format_string(var):
    summary = var.GetSummary()
    if summary is not None:
        return summary
    else:
        data = var.GetChildMemberWithName('data').GetValue()
        length = int(var.GetChildMemberWithName('len').GetValue())
        if data and length:
            error = lldb.SBError()
            return '"%s"' % var.process.ReadCStringFromMemory(int(data, 16), length + 1, error)
    return '""'


def format_struct(var, debugger, include_type=True, indent=0, type_name=""):
    children = []
    indent_str = '  ' * indent
    next_indent_str = '  ' * (indent + 1)

    for i in range(var.GetNumChildren()):
        child = var.GetChildAtIndex(i)
        child_name = child.GetName()
        child_type = map_type_name(child.GetType().GetName())
        child_value = format_value(
            child, debugger, include_type=False, indent=indent+1)

        if '\n' in child_value or var.GetNumChildren() > 3:
            children.append(f"{next_indent_str}{child_name}: {child_value},")
        else:
            children.append(f"{child_name}: {child_value}")

    if var.GetNumChildren() <= 3 and all('\n' not in child for child in children):
        struct_content = f"{{ {', '.join(children)} }}"
    else:
        struct_content = "{\n" + "\n".join(children) + "\n" + indent_str + "}"

    if include_type:
        return f"{type_name}{struct_content}"
    else:
        return struct_content


def format_pointer(var, debugger, indent, type_name):
    if not var.IsValid() or var.GetValueAsUnsigned() == 0:
        return "<variable not available>"
    pointee = var.Dereference()
    if pointee.IsValid():
        pointee_value = format_value(
            pointee, debugger, include_type=False, indent=indent)
        return f"{var.GetValue()}"
    else:
        return f"{var.GetValue()}"


def map_type_name(type_name):
    # Handle pointer types
    if type_name.endswith('*'):
        base_type = type_name[:-1].strip()
        mapped_base_type = map_type_name(base_type)
        return f"*{mapped_base_type}"

    # Map other types
    type_mapping = {
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
