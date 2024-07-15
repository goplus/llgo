#include <stdio.h>
#include <clang-c/Index.h>

typedef enum CXChildVisitResult(* wrap_CXCursorVisitor) (CXCursor *cursor, CXCursor *parent, CXClientData client_data);

typedef struct {
    CXClientData         data;
    wrap_CXCursorVisitor visitor;
} wrap_data;

CXChildVisitResult wrap_visitor(CXCursor cursor, CXCursor parent, CXClientData data) {
    wrap_data *d = (wrap_data*)(data);
    return d->visitor(&cursor,&parent,d->data);
}

extern "C" {

CXString wrap_clang_getCursorSpelling(CXCursor *cur) {
    return clang_getCursorSpelling(*cur);
}

unsigned wrap_clang_visitChildren(CXCursor *parent, 
    wrap_CXCursorVisitor visitor,
    CXClientData client_data) {
    wrap_data data = {client_data,visitor};
    return clang_visitChildren(*parent,wrap_visitor,CXClientData(&data));
}

} // extern "C"
