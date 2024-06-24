#include <clang-c/Index.h>
#include <iostream>
#include <string>

CXChildVisitResult visit(CXCursor c, CXCursor parent, CXClientData client_data);

void printAST(CXCursor cursor, unsigned int depth = 0) {
    CXString cursorKind = clang_getCursorKindSpelling(clang_getCursorKind(cursor));
    CXString cursorSpelling = clang_getCursorSpelling(cursor);

    for (unsigned int i = 0; i < depth; ++i) {
        std::cout << "  ";
    }

    std::cout << clang_getCString(cursorKind) << ": " 
              << clang_getCString(cursorSpelling) << std::endl;

    clang_disposeString(cursorKind);
    clang_disposeString(cursorSpelling);

    CXCursor child;
    clang_visitChildren(
        cursor,
        visit,
        &depth
    );
}

CXChildVisitResult visit(CXCursor c, CXCursor parent, CXClientData client_data) {
    unsigned int* depth = (unsigned int*)client_data;
    printAST(c, *depth + 1);
    return CXChildVisit_Continue;
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <header_file>" << std::endl;
        return 1;
    }

    CXIndex index = clang_createIndex(0, 0);
    CXTranslationUnit unit = clang_parseTranslationUnit(
        index,
        argv[1],
        nullptr, 0,
        nullptr, 0,
        CXTranslationUnit_None
    );

    if (unit == nullptr) {
        std::cerr << "Unable to parse translation unit. Quitting." << std::endl;
        return 1;
    }

    CXCursor cursor = clang_getTranslationUnitCursor(unit);
    std::cout << "AST for " << argv[1] << ":" << std::endl;
    printAST(cursor);

    clang_disposeTranslationUnit(unit);
    clang_disposeIndex(index);

    return 0;
}