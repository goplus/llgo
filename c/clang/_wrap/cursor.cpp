#include <clang-c/Index.h>
#include <stdio.h>

typedef enum CXChildVisitResult (*wrap_CXCursorVisitor)(CXCursor *cursor, CXCursor *parent, CXClientData client_data);

typedef struct {
    CXClientData data;
    wrap_CXCursorVisitor visitor;
} wrap_data;

CXChildVisitResult wrap_visitor(CXCursor cursor, CXCursor parent, CXClientData data) {
    wrap_data *d = (wrap_data *)(data);
    return d->visitor(&cursor, &parent, d->data);
}

extern "C" {

CXString wrap_clang_getCursorSpelling(CXCursor *cur) { return clang_getCursorSpelling(*cur); }

CXString wrap_clang_Cursor_getMangling(CXCursor *cur) { return clang_Cursor_getMangling(*cur); }

int wrap_clang_Cursor_getNumArguments(CXCursor *cur) { return clang_Cursor_getNumArguments(*cur); }

void wrap_clang_Cursor_getArgument(CXCursor *C, unsigned i, CXCursor *argCur) {
    *argCur = clang_Cursor_getArgument(*C, i);
}

void wrap_clang_getTranslationUnitCursor(CXTranslationUnit uint, CXCursor *cur) {
    *cur = clang_getTranslationUnitCursor(uint);
}

void wrap_clang_getCursorType(CXCursor *cur, CXType *typ) { *typ = clang_getCursorType(*cur); }

void wrap_clang_getCursorResultType(CXCursor *cur, CXType *typ) { *typ = clang_getCursorResultType(*cur); }

void wrap_clang_getResultType(CXType *typ, CXType *resultTyp) { *resultTyp = clang_getResultType(*typ); }

int wrap_clang_getNumArgTypes(CXType *typ) { return clang_getNumArgTypes(*typ); }

void wrap_clang_getArgType(CXType *typ, unsigned i, CXType *argTyp) { *argTyp = clang_getArgType(*typ, i); }

long long wrap_clang_getEnumConstantDeclValue(CXCursor *cur) { return clang_getEnumConstantDeclValue(*cur); }

void wrap_clang_getPointeeType(CXType *pointerTyp, CXType *pointeeTyp) {
    *pointeeTyp = clang_getPointeeType(*pointerTyp);
}

void wrap_clang_getArrayElementType(CXType *arrayTyp, CXType *elemTyp) {
    *elemTyp = clang_getArrayElementType(*arrayTyp);
}

long long wrap_clang_getArraySize(CXType *arrayTyp) { return clang_getArraySize(*arrayTyp); }

void wrap_clang_getCanonicalType(CXType *typ, CXType *canonicalType) { *canonicalType = clang_getCanonicalType(*typ); }

CXString wrap_clang_getTypeSpelling(CXType *typ) { return clang_getTypeSpelling(*typ); }

CXString wrap_clang_getTokenSpelling(CXTranslationUnit unit, CXToken *token) {
    return clang_getTokenSpelling(unit, *token);
}

void wrap_clang_getCursorLocation(CXCursor *cur, CXSourceLocation *loc) { *loc = clang_getCursorLocation(*cur); }

void wrap_clang_getSpellingLocation(CXSourceLocation *loc, CXFile *file, unsigned *line, unsigned *column,
                                    unsigned *offset) {
    clang_getSpellingLocation(*loc, file, line, column, offset);
}

enum CX_CXXAccessSpecifier wrap_clang_getCXXAccessSpecifier(CXCursor *cursor) {
    return clang_getCXXAccessSpecifier(*cursor);
}

CXString wrap_clang_Cursor_getRawCommentText(CXCursor *cursor) { return clang_Cursor_getRawCommentText(*cursor); }

void wrap_clang_getCursorExtent(CXCursor *cur, CXSourceRange *range) { *range = clang_getCursorExtent(*cur); }

CXTokenKind wrap_clang_getTokenKind(CXToken *token) { return clang_getTokenKind(*token); }

void wrap_clang_tokenize(CXTranslationUnit unit, CXSourceRange *Range, CXToken **Tokens, unsigned *NumTokens) {
    clang_tokenize(unit, *Range, Tokens, NumTokens);
}

unsigned wrap_clang_visitChildren(CXCursor *parent, wrap_CXCursorVisitor visitor, CXClientData client_data) {
    wrap_data data = {client_data, visitor};
    return clang_visitChildren(*parent, wrap_visitor, CXClientData(&data));
}

} // extern "C"
