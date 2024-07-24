#include <clang-c/Index.h>
#include <stdio.h>

typedef enum CXChildVisitResult (*wrap_CXCursorVisitor)(CXCursor *cursor, CXCursor *parent, CXClientData client_data);

typedef struct
{
    CXClientData data;
    wrap_CXCursorVisitor visitor;
} wrap_data;

CXChildVisitResult wrap_visitor(CXCursor cursor, CXCursor parent, CXClientData data)
{
    wrap_data *d = (wrap_data *)(data);
    return d->visitor(&cursor, &parent, d->data);
}

extern "C"
{

    CXString wrap_clang_getCursorSpelling(CXCursor *cur)
    {
        return clang_getCursorSpelling(*cur);
    }

    CXString wrap_clang_Cursor_getMangling(CXCursor *cur)
    {
        return clang_Cursor_getMangling(*cur);
    }

    int wrap_clang_Cursor_getNumArguments(CXCursor *cur)
    {
        return clang_Cursor_getNumArguments(*cur);
    }

    void wrap_clang_Cursor_getArgument(CXCursor *C, unsigned i, CXCursor *argCur)
    {
        *argCur = clang_Cursor_getArgument(*C, i);
    }

    void wrap_clang_getTranslationUnitCursor(CXTranslationUnit uint, CXCursor *cur)
    {
        *cur = clang_getTranslationUnitCursor(uint);
    }

    void wrap_clang_getCursorType(CXCursor *cur, CXType *typ)
    {
        *typ = clang_getCursorType(*cur);
    }

    void wrap_clang_getCursorResultType(CXCursor *cur, CXType *typ)
    {
        *typ = clang_getCursorResultType(*cur);
    }

    CXString wrap_clang_getTypeSpelling(CXType *typ)
    {
        return clang_getTypeSpelling(*typ);
    }

    unsigned wrap_clang_visitChildren(CXCursor *parent, wrap_CXCursorVisitor visitor, CXClientData client_data)
    {
        wrap_data data = {client_data, visitor};
        return clang_visitChildren(*parent, wrap_visitor, CXClientData(&data));
    }

} // extern "C"
