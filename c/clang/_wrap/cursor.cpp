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

void wrap_clang_getLocation(CXTranslationUnit tu, CXFile file, unsigned line, unsigned column, CXSourceLocation *loc) {
    *loc = clang_getLocation(tu, file, line, column);
}

void wrap_clang_getLocationForOffset(CXTranslationUnit tu, CXFile file, unsigned offset, CXSourceLocation *loc) {
    *loc = clang_getLocationForOffset(tu, file, offset);
}

void wrap_clang_getTranslationUnitCursor(CXTranslationUnit uint, CXCursor *cur) {
    *cur = clang_getTranslationUnitCursor(uint);
}

unsigned wrap_clang_equalCursors(CXCursor *cursor1, CXCursor *cursor2) {
    return clang_equalCursors(*cursor1, *cursor2);
}

int wrap_clang_Cursor_isNull(CXCursor *cursor) { return clang_Cursor_isNull(*cursor); }

void wrap_clang_getCursorSemanticParent(CXCursor *C, CXCursor *parent) { *parent = clang_getCursorSemanticParent(*C); }

void wrap_clang_getCursorDefinition(CXCursor *C, CXCursor *def) { *def = clang_getCursorDefinition(*C); }

void wrap_clang_getCursorLexicalParent(CXCursor *C, CXCursor *parent) { *parent = clang_getCursorLexicalParent(*C); }

void wrap_clang_getOverriddenCursors(CXCursor *cursor, CXCursor **overridden, unsigned *num_overridden) {
    clang_getOverriddenCursors(*cursor, overridden, num_overridden);
}

CXFile wrap_clang_getIncludedFile(CXCursor *cursor) { return clang_getIncludedFile(*cursor); }

void wrap_clang_getCursor(CXTranslationUnit uint, CXSourceLocation *loc, CXCursor *cur) {
    *cur = clang_getCursor(uint, *loc);
}

void wrap_clang_getCursorLocation(CXCursor *cur, CXSourceLocation *loc) { *loc = clang_getCursorLocation(*cur); }

void wrap_clang_getCursorExtent(CXCursor *cur, CXSourceRange *range) { *range = clang_getCursorExtent(*cur); }

void wrap_clang_getCursorType(CXCursor *cur, CXType *typ) { *typ = clang_getCursorType(*cur); }

CXString wrap_clang_getTypeSpelling(CXType *typ) { return clang_getTypeSpelling(*typ); }

void wrap_clang_getTypedefDeclUnderlyingType(CXCursor *cur, CXType *typ) {
    *typ = clang_getTypedefDeclUnderlyingType(*cur);
}

long long wrap_clang_getEnumConstantDeclValue(CXCursor *cur) { return clang_getEnumConstantDeclValue(*cur); }

int wrap_clang_Cursor_getNumArguments(CXCursor *cur) { return clang_Cursor_getNumArguments(*cur); }

void wrap_clang_Cursor_getArgument(CXCursor *C, unsigned i, CXCursor *argCur) {
    *argCur = clang_Cursor_getArgument(*C, i);
}

void wrap_clang_getCanonicalType(CXType *typ, CXType *canonicalType) { *canonicalType = clang_getCanonicalType(*typ); }

unsigned wrap_clang_isConstQualifiedType(CXType *typ) { return clang_isConstQualifiedType(*typ); }

unsigned wrap_clang_Cursor_isMacroFunctionLike(CXCursor *cur) { return clang_Cursor_isMacroFunctionLike(*cur); }

unsigned wrap_clang_Cursor_isMacroBuiltin(CXCursor *cur) { return clang_Cursor_isMacroBuiltin(*cur); }

unsigned wrap_clang_Cursor_isFunctionInlined(CXCursor *cur) { return clang_Cursor_isFunctionInlined(*cur); }

unsigned wrap_clang_isVolatileQualifiedType(CXType *T) { return clang_isVolatileQualifiedType(*T); }

unsigned wrap_clang_isRestrictQualifiedType(CXType *T) { return clang_isRestrictQualifiedType(*T); }

void wrap_clang_getPointeeType(CXType *pointerTyp, CXType *pointeeTyp) {
    *pointeeTyp = clang_getPointeeType(*pointerTyp);
}

void wrap_clang_getNonReferenceType(CXType *typ, CXType *nonRefTyp) { *nonRefTyp = clang_getNonReferenceType(*typ); }

void wrap_clang_getTypeDeclaration(CXType *typ, CXCursor *cur) { *cur = clang_getTypeDeclaration(*typ); }

void wrap_clang_getResultType(CXType *typ, CXType *resultTyp) { *resultTyp = clang_getResultType(*typ); }

int wrap_clang_getNumArgTypes(CXType *typ) { return clang_getNumArgTypes(*typ); }

void wrap_clang_getArgType(CXType *typ, unsigned i, CXType *argTyp) { *argTyp = clang_getArgType(*typ, i); }

unsigned wrap_clang_isFunctionTypeVariadic(CXType *typ) { return clang_isFunctionTypeVariadic(*typ); }

void wrap_clang_getCursorResultType(CXCursor *cur, CXType *typ) { *typ = clang_getCursorResultType(*cur); }

void wrap_clang_getElementType(CXType *Typ, CXType *elemTyp) { *elemTyp = clang_getElementType(*Typ); }

void wrap_clang_getArrayElementType(CXType *arrayTyp, CXType *elemTyp) {
    *elemTyp = clang_getArrayElementType(*arrayTyp);
}

long long wrap_clang_getArraySize(CXType *arrayTyp) { return clang_getArraySize(*arrayTyp); }

void wrap_clang_Type_getNamedType(CXType *typ, CXType *namedTyp) { *namedTyp = clang_Type_getNamedType(*typ); }

long long wrap_clang_Type_getSizeOf(CXType *typ) { return clang_Type_getSizeOf(*typ); }

unsigned wrap_clang_Cursor_isAnonymous(CXCursor *cursor) { return clang_Cursor_isAnonymous(*cursor); }

unsigned wrap_clang_Cursor_isAnonymousRecordDecl(CXCursor *cursor) {
    return clang_Cursor_isAnonymousRecordDecl(*cursor);
}

enum CX_CXXAccessSpecifier wrap_clang_getCXXAccessSpecifier(CXCursor *cursor) {
    return clang_getCXXAccessSpecifier(*cursor);
}

enum CX_StorageClass wrap_clang_Cursor_getStorageClass(CXCursor *cursor) {
    return clang_Cursor_getStorageClass(*cursor);
}

CXString wrap_clang_getCursorUSR(CXCursor *cur) { return clang_getCursorUSR(*cur); }

CXString wrap_clang_getCursorSpelling(CXCursor *cur) { return clang_getCursorSpelling(*cur); }

CXString wrap_clang_getCursorDisplayName(CXCursor *cur) { return clang_getCursorDisplayName(*cur); }

void wrap_clang_getCursorReferenced(CXCursor *cur, CXCursor *referenced) {
    *referenced = clang_getCursorReferenced(*cur);
}

unsigned wrap_clang_Cursor_isVariadic(CXCursor *cur) { return clang_Cursor_isVariadic(*cur); }

void wrap_clang_Cursor_getCommentRange(CXCursor *cur, CXSourceRange *range) {
    *range = clang_Cursor_getCommentRange(*cur);
}

CXString wrap_clang_Cursor_getRawCommentText(CXCursor *cursor) { return clang_Cursor_getRawCommentText(*cursor); }

CXString wrap_clang_Cursor_getMangling(CXCursor *cur) { return clang_Cursor_getMangling(*cur); }

unsigned wrap_clang_CXXConstructor_isConvertingConstructor(CXCursor *cursor) {
    return clang_CXXConstructor_isConvertingConstructor(*cursor);
}

unsigned wrap_clang_CXXConstructor_isCopyConstructor(CXCursor *cursor) {
    return clang_CXXConstructor_isCopyConstructor(*cursor);
}

unsigned wrap_clang_CXXConstructor_isDefaultConstructor(CXCursor *cursor) {
    return clang_CXXConstructor_isDefaultConstructor(*cursor);
}

unsigned wrap_clang_CXXConstructor_isMoveConstructor(CXCursor *cursor) {
    return clang_CXXConstructor_isMoveConstructor(*cursor);
}

unsigned wrap_clang_CXXField_isMutable(CXCursor *cursor) { return clang_CXXField_isMutable(*cursor); }

unsigned wrap_clang_CXXMethod_isDefaulted(CXCursor *cursor) { return clang_CXXMethod_isDefaulted(*cursor); }

unsigned wrap_clang_CXXMethod_isDeleted(CXCursor *cursor) { return clang_CXXMethod_isDeleted(*cursor); }

unsigned wrap_clang_CXXMethod_isPureVirtual(CXCursor *cursor) { return clang_CXXMethod_isPureVirtual(*cursor); }

unsigned wrap_clang_CXXMethod_isStatic(CXCursor *cursor) { return clang_CXXMethod_isStatic(*cursor); }

unsigned wrap_clang_CXXMethod_isVirtual(CXCursor *cursor) { return clang_CXXMethod_isVirtual(*cursor); }

unsigned wrap_clang_CXXMethod_isCopyAssignmentOperator(CXCursor *cursor) {
    return clang_CXXMethod_isCopyAssignmentOperator(*cursor);
}

unsigned wrap_clang_CXXMethod_isMoveAssignmentOperator(CXCursor *cursor) {
    return clang_CXXMethod_isMoveAssignmentOperator(*cursor);
}

unsigned wrap_clang_CXXMethod_isExplicit(CXCursor *cursor) { return clang_CXXMethod_isExplicit(*cursor); }

unsigned wrap_clang_CXXRecord_isAbstract(CXCursor *cursor) { return clang_CXXRecord_isAbstract(*cursor); }

unsigned wrap_clang_EnumDecl_isScoped(CXCursor *cursor) { return clang_EnumDecl_isScoped(*cursor); }

unsigned wrap_clang_CXXMethod_isConst(CXCursor *cursor) { return clang_CXXMethod_isConst(*cursor); }

CXTokenKind wrap_clang_getTokenKind(CXToken *token) { return clang_getTokenKind(*token); }

CXString wrap_clang_getTokenSpelling(CXTranslationUnit unit, CXToken *token) {
    return clang_getTokenSpelling(unit, *token);
}

void wrap_clang_tokenize(CXTranslationUnit unit, CXSourceRange *Range, CXToken **Tokens, unsigned *NumTokens) {
    clang_tokenize(unit, *Range, Tokens, NumTokens);
}

unsigned wrap_clang_visitChildren(CXCursor *parent, wrap_CXCursorVisitor visitor, CXClientData client_data) {
    wrap_data data = {client_data, visitor};
    return clang_visitChildren(*parent, wrap_visitor, CXClientData(&data));
}

int wrap_clang_Location_isInSystemHeader(CXSourceLocation *loc) { return clang_Location_isInSystemHeader(*loc); }

void wrap_clang_getSpellingLocation(CXSourceLocation *loc, CXFile *file, unsigned *line, unsigned *column,
                                    unsigned *offset) {
    clang_getSpellingLocation(*loc, file, line, column, offset);
}

void wrap_clang_getPresumedLocation(CXSourceLocation *loc, CXString *filename, unsigned *line, unsigned *column) {
    clang_getPresumedLocation(*loc, filename, line, column);
}

void wrap_clang_getRangeStart(CXSourceRange *range, CXSourceLocation *loc) { *loc = clang_getRangeStart(*range); }

void wrap_clang_getRangeEnd(CXSourceRange *range, CXSourceLocation *loc) { *loc = clang_getRangeEnd(*range); }

} // extern "C"
