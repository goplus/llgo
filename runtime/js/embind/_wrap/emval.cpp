#include <string>
#include <emscripten.h>
#include <emscripten/val.h>
#include <emscripten/bind.h>

using namespace emscripten;
using namespace emscripten::internal;

template<typename T>
TYPEID take_typeid() {
    typename WithPolicies<>::template ArgTypeList<T> targetType;
    return targetType.getTypes()[0];    
}

template<typename T, typename... Policies>
EM_VAL take_value(T&& value, Policies...) {
    typename WithPolicies<Policies...>::template ArgTypeList<T> valueType;
    WireTypePack<T> argv(std::forward<T>(value));
    return _emval_take_value(valueType.getTypes()[0], argv);
}

template<typename T, typename ...Policies>
T as_value(EM_VAL val, Policies...) {
    typedef BindingType<T> BT;
    typename WithPolicies<Policies...>::template ArgTypeList<T> targetType;
    
    EM_DESTRUCTORS destructors = nullptr;
    EM_GENERIC_WIRE_TYPE result = _emval_as(
        val,
        targetType.getTypes()[0],
        &destructors);
    DestructorsRunner dr(destructors);
    return fromGenericWireType<T>(result);
}

struct GoString {
    char *data;
    int len;   
};

static TYPEID typeid_val = take_typeid<val>();

extern "C" {

// export from llgo
extern GoString llgo_export_string_from(const char *data, int n);
extern bool llgo_export_invoke(EM_VAL args);

EM_VAL llgo_emval_get_global(const char *name) {
    return _emval_get_global(name);
}

EM_VAL llgo_emval_new_double(double v) {
    return take_value(v);
}

EM_VAL llgo_emval_new_string(const char *str) {
    return _emval_new_u8string(str);
}

EM_VAL llgo_emval_new_object() {
    return _emval_new_object();
}

EM_VAL llgo_emval_new_array() {
    return _emval_new_array();
}

void llgo_emval_incref(EM_VAL value) {
    _emval_incref(value);
}

void llgo_emval_decref(EM_VAL value) {
    _emval_decref(value);
}

void llgo_emval_set_property(EM_VAL object, EM_VAL key, EM_VAL value) {
    _emval_set_property(object, key, value);
}

EM_VAL llgo_emval_get_property(EM_VAL object, EM_VAL key) {
    return _emval_get_property(object, key);
}

bool llgo_emval_is_number(EM_VAL object) {
    return _emval_is_number(object);
}

bool llgo_emval_is_string(EM_VAL object) {
    return _emval_is_string(object);
}

bool llgo_emval_in(EM_VAL item, EM_VAL object) {
    return _emval_in(item, object);
}

bool llgo_emval_delete(EM_VAL object, EM_VAL property) {
    return _emval_delete(object, property);
}

EM_VAL llgo_emval_typeof(EM_VAL value) {
    return _emval_typeof(value);
}

bool llgo_emval_instanceof(EM_VAL object, EM_VAL constructor) {
    return _emval_instanceof(object, constructor);
}

double llgo_emval_as_double(EM_VAL v) {
    return as_value<double>(v);
}

GoString llgo_emval_as_string(EM_VAL v) {
    std::string value = as_value<std::string>(v);
    return llgo_export_string_from(value.c_str(), int(value.size()));
}

bool llgo_emval_equals(EM_VAL first, EM_VAL second) {
    return _emval_equals(first, second);
}

EM_VAL llgo_emval_method_call(EM_VAL object, const char* name, EM_VAL args[], int nargs, int *error) {
    std::vector<TYPEID> arr;
    arr.resize(nargs+1);
    std::vector<GenericWireType> elements;
    elements.resize(nargs);
    GenericWireType *cursor = elements.data();
    arr[0] = typeid_val;
    for (int i = 0; i < nargs; i++) {
        arr[i+1] = typeid_val;
        _emval_incref(args[i]);
        writeGenericWireTypes(cursor, args[i]);
    }
    EM_METHOD_CALLER caller = _emval_get_method_caller(nargs+1,&arr[0],EM_METHOD_CALLER_KIND::FUNCTION);
    EM_GENERIC_WIRE_TYPE ret;
    try {
        EM_DESTRUCTORS destructors = nullptr;
        ret = _emval_call_method(caller, object, name, &destructors, elements.data());        
    } catch(const emscripten::val& jsErr) {
        printf("error\n");
        *error = 1;
        return EM_VAL(internal::_EMVAL_UNDEFINED);
    }
    return fromGenericWireType<val>(ret).release_ownership();   
}

/*
kind:
FUNCTION = 0,
CONSTRUCTOR = 1,
*/
EM_VAL llgo_emval_call(EM_VAL fn, EM_VAL args[], int nargs, int kind, int *error) {
   std::vector<TYPEID> arr;
   arr.resize(nargs+1);
   std::vector<GenericWireType> elements;
   elements.resize(nargs);
   GenericWireType *cursor = elements.data();
   arr[0] = typeid_val;
   for (int i = 0; i < nargs; i++) {
       arr[i+1] = typeid_val;
       _emval_incref(args[i]);
       writeGenericWireTypes(cursor, args[i]);
   }
   EM_METHOD_CALLER caller = _emval_get_method_caller(nargs+1,&arr[0],EM_METHOD_CALLER_KIND(kind));
   EM_GENERIC_WIRE_TYPE ret;
   try {
       EM_DESTRUCTORS destructors = nullptr;
       ret = _emval_call(caller, fn, &destructors, elements.data());
   } catch(const emscripten::val& jsErr) {
       *error = 1;
       return EM_VAL(internal::_EMVAL_UNDEFINED);
   }
   return fromGenericWireType<val>(ret).release_ownership();
}

EM_VAL llgo_emval_memory_view_uint8(size_t length, uint8_t *data) {
    val view{ typed_memory_view<uint8_t>(length,data) };
    return view.release_ownership();
}

void llgo_emval_dump(EM_VAL v) {
    _emval_incref(v);
    val console = val::global("console");
    console.call<void>("log", val::take_ownership(v));
}

}

bool invoke(val args) {
    return llgo_export_invoke(args.as_handle());
}

EMSCRIPTEN_BINDINGS(my_module) {
    function("_llgo_invoke", &invoke);
}