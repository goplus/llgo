/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
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

package clang

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoFiles   = "$(llvm-config --cflags): _wrap/cursor.cpp"
	LLGoPackage = "link: -L$(llvm-config --libdir) -lclang; -lclang"
)

const (
	/* Declarations */
	/**
	 * A declaration whose specific kind is not exposed via this
	 * interface.
	 *
	 * Unexposed declarations have the same operations as any other kind
	 * of declaration; one can extract their location information,
	 * spelling, find their definitions, etc. However, the specific kind
	 * of the declaration is not reported.
	 */
	CursorUnexposedDecl CursorKind = iota + 1

	/** A C or C++ struct. */
	CursorStructDecl

	/** A C or C++ union. */
	CursorUnionDecl

	/** A C++ class. */
	CursorClassDecl

	/** An enumeration. */
	CursorEnumDecl

	/**
	 * A field (in C) or non-static data member (in C++) in a
	 * struct, union, or C++ class.
	 */
	CursorFieldDecl

	/** An enumerator constant. */
	CursorEnumConstantDecl

	/** A function. */
	CursorFunctionDecl

	/** A variable. */
	CursorVarDecl

	/** A function or method parameter. */
	CursorParmDecl

	/** An Objective-C \@interface. */
	CursorObjCInterfaceDecl

	/** An Objective-C \@interface for a category. */
	CursorObjCCategoryDecl

	/** An Objective-C \@protocol declaration. */
	CursorObjCProtocolDecl

	/** An Objective-C \@property declaration. */
	CursorObjCPropertyDecl

	/** An Objective-C instance variable. */
	CursorObjCIvarDecl

	/** An Objective-C instance method. */
	CursorObjCInstanceMethodDecl

	/** An Objective-C class method. */
	CursorObjCClassMethodDecl

	/** An Objective-C \@implementation. */
	CursorObjCImplementationDecl

	/** An Objective-C \@implementation for a category. */
	CursorObjCCategoryImplDecl

	/** A typedef. */
	CursorTypedefDecl

	/** A C++ class method. */
	CursorCXXMethod

	/** A C++ namespace. */
	CursorNamespace

	/** A linkage specification, e.g. 'extern "C"'. */
	CursorLinkageSpec

	/** A C++ constructor. */
	CursorConstructor

	/** A C++ destructor. */
	CursorDestructor

	/** A C++ conversion function. */
	CursorConversionFunction

	/** A C++ template type parameter. */
	CursorTemplateTypeParameter

	/** A C++ non-type template parameter. */
	CursorNonTypeTemplateParameter

	/** A C++ template template parameter. */
	CursorTemplateTemplateParameter

	/** A C++ function template. */
	CursorFunctionTemplate

	/** A C++ class template. */
	CursorClassTemplate

	/** A C++ class template partial specialization. */
	CursorClassTemplatePartialSpecialization

	/** A C++ namespace alias declaration. */
	CursorNamespaceAlias

	/** A C++ using directive. */
	CursorUsingDirective

	/** A C++ using declaration. */
	CursorUsingDeclaration

	/** A C++ alias declaration */
	CursorTypeAliasDecl

	/** An Objective-C \@synthesize definition. */
	CursorObjCSynthesizeDecl

	/** An Objective-C \@dynamic definition. */
	CursorObjCDynamicDecl

	/** An access specifier. */
	CursorCXXAccessSpecifier

	CursorFirstDecl = CursorUnexposedDecl
	CursorLastDecl  = CursorCXXAccessSpecifier

	/* References */
	CursorFirstRef          = 40
	CursorObjCSuperClassRef = iota - 2 //40
	CursorObjCProtocolRef
	CursorObjCClassRef

	/**
	 * A reference to a type declaration.
	 *
	 * A type reference occurs anywhere where a type is named but not
	 * declared. For example, given:
	 *
	 * \code
	 * typedef unsigned size_type;
	 * size_type size;
	 * \endcode
	 *
	 * The typedef is a declaration of size_type (CXCursor_TypedefDecl),
	 * while the type of the variable "size" is referenced. The cursor
	 * referenced by the type of size is the typedef for size_type.
	 */
	CursorTypeRef

	CursorCXXBaseSpecifier

	/**
	 * A reference to a class template, function template, template
	 * template parameter, or class template partial specialization.
	 */
	CursorTemplateRef

	/**
	 * A reference to a namespace or namespace alias.
	 */
	CursorNamespaceRef

	/**
	 * A reference to a member of a struct, union, or class that occurs in
	 * some non-expression context, e.g., a designated initializer.
	 */
	CursorMemberRef

	/**
	 * A reference to a labeled statement.
	 *
	 * This cursor kind is used to describe the jump to "start_over" in the
	 * goto statement in the following example:
	 *
	 * \code
	 *   start_over:
	 *     ++counter;
	 *
	 *     goto start_over;
	 * \endcode
	 *
	 * A label reference cursor refers to a label statement.
	 */
	CursorLabelRef

	/**
	 * A reference to a set of overloaded functions or function templates
	 * that has not yet been resolved to a specific function or function template.
	 *
	 * An overloaded declaration reference cursor occurs in C++ templates where
	 * a dependent name refers to a function. For example:
	 *
	 * \code
	 * template<typename T> void swap(T&, T&);
	 *
	 * struct X { ... };
	 * void swap(X&, X&);
	 *
	 * template<typename T>
	 * void reverse(T* first, T* last) {
	 *   while (first < last - 1) {
	 *     swap(*first, *--last);
	 *     ++first;
	 *   }
	 * }
	 *
	 * struct Y { };
	 * void swap(Y&, Y&);
	 * \endcode
	 *
	 * Here, the identifier "swap" is associated with an overloaded declaration
	 * reference. In the template definition, "swap" refers to either of the two
	 * "swap" functions declared above, so both results will be available. At
	 * instantiation time, "swap" may also refer to other functions found via
	 * argument-dependent lookup (e.g., the "swap" function at the end of the
	 * example).
	 *
	 * The functions \c clang_getNumOverloadedDecls() and
	 * \c clang_getOverloadedDecl() can be used to retrieve the definitions
	 * referenced by this cursor.
	 */
	CursorOverloadedDeclRef

	/**
	 * A reference to a variable that occurs in some non-expression
	 * context, e.g., a C++ lambda capture list.
	 */
	CursorVariableRef

	CursorLastRef = CursorVariableRef

	/* Error conditions */
	CursorFirstInvalid = 70
	CursorInvalidFile  = iota + 15 //70
	CursorNoDeclFound
	CursorNotImplemented
	CursorInvalidCode
	CursorLastInvalid = CursorInvalidCode

	/* Expressions */
	CursorFirstExpr = 100

	/**
	 * An expression whose specific kind is not exposed via this
	 * interface.
	 *
	 * Unexposed expressions have the same operations as any other kind
	 * of expression; one can extract their location information,
	 * spelling, children, etc. However, the specific kind of the
	 * expression is not reported.
	 */
	CursorUnexposedExpr = iota + 39 //100

	/**
	 * An expression that refers to some value declaration, such
	 * as a function, variable, or enumerator.
	 */
	CursorDeclRefExpr

	/**
	 * An expression that refers to a member of a struct, union,
	 * class, Objective-C class, etc.
	 */
	CursorMemberRefExpr

	/** An expression that calls a function. */
	CursorCallExpr

	/** An expression that sends a message to an Objective-C
	object or class. */
	CursorObjCMessageExpr

	/** An expression that represents a block literal. */
	CursorBlockExpr

	/** An integer literal.
	 */
	CursorIntegerLiteral

	/** A floating point number literal.
	 */
	CursorFloatingLiteral

	/** An imaginary number literal.
	 */
	CursorImaginaryLiteral

	/** A string literal.
	 */
	CursorStringLiteral

	/** A character literal.
	 */
	CursorCharacterLiteral

	/** A parenthesized expression, e.g. "(1)".
	 *
	 * This AST node is only formed if full location information is requested.
	 */
	CursorParenExpr

	/** This represents the unary-expression's (except sizeof and
	 * alignof).
	 */
	CursorUnaryOperator

	/** [C99 6.5.2.1] Array Subscripting.
	 */
	CursorArraySubscriptExpr

	/** A builtin binary operation expression such as "x + y" or
	 * "x <= y".
	 */
	CursorBinaryOperator

	/** Compound assignment such as "+=".
	 */
	CursorCompoundAssignOperator

	/** The ?: ternary operator.
	 */
	CursorConditionalOperator

	/** An explicit cast in C (C99 6.5.4) or a C-style cast in C++
	 * (C++ [expr.cast]), which uses the syntax (Type)expr.
	 *
	 * For example: (int)f.
	 */
	CursorCStyleCastExpr

	/** [C99 6.5.2.5]
	 */
	CursorCompoundLiteralExpr

	/** Describes an C or C++ initializer list.
	 */
	CursorInitListExpr

	/** The GNU address of label extension, representing &&label.
	 */
	CursorAddrLabelExpr

	/** This is the GNU Statement Expression extension: ({int X=4; X;})
	 */
	CursorStmtExpr

	/** Represents a C11 generic selection.
	 */
	CursorGenericSelectionExpr

	/** Implements the GNU __null extension, which is a name for a null
	 * pointer constant that has integral type (e.g., int or long) and is the same
	 * size and alignment as a pointer.
	 *
	 * The __null extension is typically only used by system headers, which define
	 * NULL as __null in C++ rather than using 0 (which is an integer that may not
	 * match the size of a pointer).
	 */
	CursorGNUNullExpr

	/** C++'s static_cast<> expression.
	 */
	CursorCXXStaticCastExpr

	/** C++'s dynamic_cast<> expression.
	 */
	CursorCXXDynamicCastExpr

	/** C++'s reinterpret_cast<> expression.
	 */
	CursorCXXReinterpretCastExpr

	/** C++'s const_cast<> expression.
	 */
	CursorCXXConstCastExpr

	/** Represents an explicit C++ type conversion that uses "functional"
	 * notion (C++ [expr.type.conv]).
	 *
	 * Example:
	 * \code
	 *   x = int(0.5);
	 * \endcode
	 */
	CursorCXXFunctionalCastExpr

	/** A C++ typeid expression (C++ [expr.typeid]).
	 */
	CursorCXXTypeidExpr

	/** [C++ 2.13.5] C++ Boolean Literal.
	 */
	CursorCXXBoolLiteralExpr

	/** [C++0x 2.14.7] C++ Pointer Literal.
	 */
	CursorCXXNullPtrLiteralExpr

	/** Represents the "this" expression in C++
	 */
	CursorCXXThisExpr

	/** [C++ 15] C++ Throw Expression.
	 *
	 * This handles 'throw' and 'throw' assignment-expression. When
	 * assignment-expression isn't present, Op will be null.
	 */
	CursorCXXThrowExpr

	/** A new expression for memory allocation and constructor calls, e.g:
	 * "new CXXNewExpr(foo)".
	 */
	CursorCXXNewExpr

	/** A delete expression for memory deallocation and destructor calls,
	 * e.g. "delete[] pArray".
	 */
	CursorCXXDeleteExpr

	/** A unary expression. (noexcept, sizeof, or other traits)
	 */
	CursorUnaryExpr

	/** An Objective-C string literal i.e. @"foo".
	 */
	CursorObjCStringLiteral

	/** An Objective-C \@encode expression.
	 */
	CursorObjCEncodeExpr

	/** An Objective-C \@selector expression.
	 */
	CursorObjCSelectorExpr

	/** An Objective-C \@protocol expression.
	 */
	CursorObjCProtocolExpr

	/** An Objective-C "bridged" cast expression, which casts between
	 * Objective-C pointers and C pointers, transferring ownership in the process.
	 *
	 * \code
	 *   NSString *str = (__bridge_transfer NSString *)CFCreateString();
	 * \endcode
	 */
	CursorObjCBridgedCastExpr

	/** Represents a C++0x pack expansion that produces a sequence of
	 * expressions.
	 *
	 * A pack expansion expression contains a pattern (which itself is an
	 * expression) followed by an ellipsis. For example:
	 *
	 * \code
	 * template<typename F, typename ...Types>
	 * void forward(F f, Types &&...args) {
	 *  f(static_cast<Types&&>(args)...);
	 * }
	 * \endcode
	 */
	CursorPackExpansionExpr

	/** Represents an expression that computes the length of a parameter
	 * pack.
	 *
	 * \code
	 * template<typename ...Types>
	 * struct count {
	 *   static const unsigned value = sizeof...(Types);
	 * };
	 * \endcode
	 */
	CursorSizeOfPackExpr
	/* Represents a C++ lambda expression that produces a local function
	 * object.
	 *
	 * \code
	 * void abssort(float *x, unsigned N) {
	 *   std::sort(x, x + N,
	 *             [](float a, float b) {
	 *               return std::abs(a) < std::abs(b);
	 *             });
	 * }
	 * \endcode
	 */
	CursorLambdaExpr

	/** Objective-c Boolean Literal.
	 */
	CursorObjCBoolLiteralExpr

	/** Represents the "self" expression in an Objective-C method.
	 */
	CursorObjCSelfExpr

	/** OpenMP 5.0 [2.1.5, Array Section].
	 */
	CursorOMPArraySectionExpr

	/** Represents an @available(...) check.
	 */
	CursorObjCAvailabilityCheckExpr

	/**
	 * Fixed point literal
	 */
	CursorFixedPointLiteral

	/** OpenMP 5.0 [2.1.4, Array Shaping].
	 */
	CursorOMPArrayShapingExpr

	/**
	 * OpenMP 5.0 [2.1.6 Iterators]
	 */
	CursorOMPIteratorExpr

	/** OpenCL's addrspace_cast<> expression.
	 */
	CursorCXXAddrspaceCastExpr

	/**
	 * Expression that references a C++20 concept.
	 */
	CursorConceptSpecializationExpr

	/**
	 * Expression that references a C++20 concept.
	 */
	CursorRequiresExpr

	/**
	 * Expression that references a C++20 parenthesized list aggregate
	 * initializer.
	 */
	CursorCXXParenListInitExpr

	CursorLastExpr = CursorCXXParenListInitExpr

	/* Statements */
	CursorFirstStmt = 200
	/**
	 * A statement whose specific kind is not exposed via this
	 * interface.
	 *
	 * Unexposed statements have the same operations as any other kind of
	 * statement; one can extract their location information, spelling,
	 * children, etc. However, the specific kind of the statement is not
	 * reported.
	 */
	CursorUnexposedStmt = iota + 81 //200

	/** A labelled statement in a function.
	 *
	 * This cursor kind is used to describe the "start_over:" label statement in
	 * the following example:
	 *
	 * \code
	 *   start_over:
	 *     ++counter;
	 * \endcode
	 *
	 */
	CursorLabelStmt

	/** A group of statements like { stmt stmt }.
	 *
	 * This cursor kind is used to describe compound statements, e.g. function
	 * bodies.
	 */
	CursorCompoundStmt

	/** A case statement.
	 */
	CursorCaseStmt

	/** A default statement.
	 */
	CursorDefaultStmt

	/** An if statement
	 */
	CursorIfStmt

	/** A switch statement.
	 */
	CursorSwitchStmt

	/** A while statement.
	 */
	CursorWhileStmt

	/** A do statement.
	 */
	CursorDoStmt

	/** A for statement.
	 */
	CursorForStmt

	/** A goto statement.
	 */
	CursorGotoStmt

	/** An indirect goto statement.
	 */
	CursorIndirectGotoStmt

	/** A continue statement.
	 */
	CursorContinueStmt

	/** A break statement.
	 */
	CursorBreakStmt

	/** A return statement.
	 */
	CursorReturnStmt

	/** A GCC inline assembly statement extension.
	 */
	CursorGCCAsmStmt
	CursorAsmStmt = CursorGCCAsmStmt

	/** Objective-C's overall \@try-\@catch-\@finally statement.
	 */
	CursorObjCAtTryStmt = iota + 80 //216

	/** Objective-C's \@catch statement.
	 */
	CursorObjCAtCatchStmt

	/** Objective-C's \@finally statement.
	 */
	CursorObjCAtFinallyStmt

	/** Objective-C's \@throw statement.
	 */
	CursorObjCAtThrowStmt

	/** Objective-C's \@synchronized statement.
	 */
	CursorObjCAtSynchronizedStmt

	/** Objective-C's autorelease pool statement.
	 */
	CursorObjCAutoreleasePoolStmt

	/** Objective-C's collection statement.
	 */
	CursorObjCForCollectionStmt

	/** C++'s catch statement.
	 */
	CursorCXXCatchStmt

	/** C++'s try statement.
	 */
	CursorCXXTryStmt

	/** C++'s for (* : *) statement.
	 */
	CursorCXXForRangeStmt

	/** Windows Structured Exception Handling's try statement.
	 */
	CursorSEHTryStmt

	/** Windows Structured Exception Handling's except statement.
	 */
	CursorSEHExceptStmt

	/** Windows Structured Exception Handling's finally statement.
	 */
	CursorSEHFinallyStmt

	/** A MS inline assembly statement extension.
	 */
	CursorMSAsmStmt

	/** The null statement ";": C99 6.8.3p3.
	 *
	 * This cursor kind is used to describe the null statement.
	 */
	CursorNullStmt

	/** Adaptor class for mixing declarations with statements and
	 * expressions.
	 */
	CursorDeclStmt

	/** OpenMP parallel directive.
	 */
	CursorOMPParallelDirective

	/** OpenMP SIMD directive.
	 */
	CursorOMPSimdDirective

	/** OpenMP for directive.
	 */
	CursorOMPForDirective

	/** OpenMP sections directive.
	 */
	CursorOMPSectionsDirective

	/** OpenMP section directive.
	 */
	CursorOMPSectionDirective

	/** OpenMP single directive.
	 */
	CursorOMPSingleDirective

	/** OpenMP parallel for directive.
	 */
	CursorOMPParallelForDirective

	/** OpenMP parallel sections directive.
	 */
	CursorOMPParallelSectionsDirective

	/** OpenMP task directive.
	 */
	CursorOMPTaskDirective

	/** OpenMP master directive.
	 */
	CursorOMPMasterDirective

	/** OpenMP critical directive.
	 */
	CursorOMPCriticalDirective

	/** OpenMP taskyield directive.
	 */
	CursorOMPTaskyieldDirective

	/** OpenMP barrier directive.
	 */
	CursorOMPBarrierDirective

	/** OpenMP taskwait directive.
	 */
	CursorOMPTaskwaitDirective

	/** OpenMP flush directive.
	 */
	CursorOMPFlushDirective

	/** Windows Structured Exception Handling's leave statement.
	 */
	CursorSEHLeaveStmt

	/** OpenMP ordered directive.
	 */
	CursorOMPOrderedDirective

	/** OpenMP atomic directive.
	 */
	CursorOMPAtomicDirective

	/** OpenMP for SIMD directive.
	 */
	CursorOMPForSimdDirective

	/** OpenMP parallel for SIMD directive.
	 */
	CursorOMPParallelForSimdDirective

	/** OpenMP target directive.
	 */
	CursorOMPTargetDirective

	/** OpenMP teams directive.
	 */
	CursorOMPTeamsDirective

	/** OpenMP taskgroup directive.
	 */
	CursorOMPTaskgroupDirective

	/** OpenMP cancellation point directive.
	 */
	CursorOMPCancellationPointDirective

	/** OpenMP cancel directive.
	 */
	CursorOMPCancelDirective

	/** OpenMP target data directive.
	 */
	CursorOMPTargetDataDirective

	/** OpenMP taskloop directive.
	 */
	CursorOMPTaskLoopDirective

	/** OpenMP taskloop simd directive.
	 */
	CursorOMPTaskLoopSimdDirective

	/** OpenMP distribute directive.
	 */
	CursorOMPDistributeDirective

	/** OpenMP target enter data directive.
	 */
	CursorOMPTargetEnterDataDirective

	/** OpenMP target exit data directive.
	 */
	CursorOMPTargetExitDataDirective

	/** OpenMP target parallel directive.
	 */
	CursorOMPTargetParallelDirective

	/** OpenMP target parallel for directive.
	 */
	CursorOMPTargetParallelForDirective

	/** OpenMP target update directive.
	 */
	CursorOMPTargetUpdateDirective

	/** OpenMP distribute parallel for directive.
	 */
	CursorOMPDistributeParallelForDirective

	/** OpenMP distribute parallel for simd directive.
	 */
	CursorOMPDistributeParallelForSimdDirective

	/** OpenMP distribute simd directive.
	 */
	CursorOMPDistributeSimdDirective

	/** OpenMP target parallel for simd directive.
	 */
	CursorOMPTargetParallelForSimdDirective

	/** OpenMP target simd directive.
	 */
	CursorOMPTargetSimdDirective

	/** OpenMP teams distribute directive.
	 */
	CursorOMPTeamsDistributeDirective

	/** OpenMP teams distribute simd directive.
	 */
	CursorOMPTeamsDistributeSimdDirective

	/** OpenMP teams distribute parallel for simd directive.
	 */
	CursorOMPTeamsDistributeParallelForSimdDirective

	/** OpenMP teams distribute parallel for directive.
	 */
	CursorOMPTeamsDistributeParallelForDirective

	/** OpenMP target teams directive.
	 */
	CursorOMPTargetTeamsDirective

	/** OpenMP target teams distribute directive.
	 */
	CursorOMPTargetTeamsDistributeDirective

	/** OpenMP target teams distribute parallel for directive.
	 */
	CursorOMPTargetTeamsDistributeParallelForDirective

	/** OpenMP target teams distribute parallel for simd directive.
	 */
	CursorOMPTargetTeamsDistributeParallelForSimdDirective

	/** OpenMP target teams distribute simd directive.
	 */
	CursorOMPTargetTeamsDistributeSimdDirective

	/** C++2a std::bit_cast expression.
	 */
	CursorBuiltinBitCastExpr

	/** OpenMP master taskloop directive.
	 */
	CursorOMPMasterTaskLoopDirective

	/** OpenMP parallel master taskloop directive.
	 */
	CursorOMPParallelMasterTaskLoopDirective

	/** OpenMP master taskloop simd directive.
	 */
	CursorOMPMasterTaskLoopSimdDirective

	/** OpenMP parallel master taskloop simd directive.
	 */
	CursorOMPParallelMasterTaskLoopSimdDirective

	/** OpenMP parallel master directive.
	 */
	CursorOMPParallelMasterDirective

	/** OpenMP depobj directive.
	 */
	CursorOMPDepobjDirective

	/** OpenMP scan directive.
	 */
	CursorOMPScanDirective

	/** OpenMP tile directive.
	 */
	CursorOMPTileDirective

	/** OpenMP canonical loop.
	 */
	CursorOMPCanonicalLoop

	/** OpenMP interop directive.
	 */
	CursorOMPInteropDirective

	/** OpenMP dispatch directive.
	 */
	CursorOMPDispatchDirective

	/** OpenMP masked directive.
	 */
	CursorOMPMaskedDirective

	/** OpenMP unroll directive.
	 */
	CursorOMPUnrollDirective

	/** OpenMP metadirective directive.
	 */
	CursorOMPMetaDirective

	/** OpenMP loop directive.
	 */
	CursorOMPGenericLoopDirective

	/** OpenMP teams loop directive.
	 */
	CursorOMPTeamsGenericLoopDirective

	/** OpenMP target teams loop directive.
	 */
	CursorOMPTargetTeamsGenericLoopDirective

	/** OpenMP parallel loop directive.
	 */
	CursorOMPParallelGenericLoopDirective

	/** OpenMP target parallel loop directive.
	 */
	CursorOMPTargetParallelGenericLoopDirective

	/** OpenMP parallel masked directive.
	 */
	CursorOMPParallelMaskedDirective

	/** OpenMP masked taskloop directive.
	 */
	CursorOMPMaskedTaskLoopDirective

	/** OpenMP masked taskloop simd directive.
	 */
	CursorOMPMaskedTaskLoopSimdDirective

	/** OpenMP parallel masked taskloop directive.
	 */
	CursorOMPParallelMaskedTaskLoopDirective

	/** OpenMP parallel masked taskloop simd directive.
	 */
	CursorOMPParallelMaskedTaskLoopSimdDirective

	/** OpenMP error directive.
	 */
	CursorOMPErrorDirective

	/** OpenMP scope directive.
	 */
	CursorOMPScopeDirective

	CursorLastStmt = CursorOMPScopeDirective

	/**
	 * Cursor that represents the translation unit itself.
	 *
	 * The translation unit cursor exists primarily to act as the root
	 * cursor for traversing the contents of a translation unit.
	 */
	CursorTranslationUnit = 350

	/* Attributes */
	CursorFirstAttr = 400
	/**
	 * An attribute whose specific kind is not exposed via this
	 * interface.
	 */
	CursorUnexposedAttr = iota + 170

	CursorIBActionAttr
	CursorIBOutletAttr
	CursorIBOutletCollectionAttr
	CursorCXXFinalAttr
	CursorCXXOverrideAttr
	CursorAnnotateAttr
	CursorAsmLabelAttr
	CursorPackedAttr
	CursorPureAttr
	CursorConstAttr
	CursorNoDuplicateAttr
	CursorCUDAConstantAttr
	CursorCUDADeviceAttr
	CursorCUDAGlobalAttr
	CursorCUDAHostAttr
	CursorCUDASharedAttr
	CursorVisibilityAttr
	CursorDLLExport
	CursorDLLImport
	CursorNSReturnsRetained
	CursorNSReturnsNotRetained
	CursorNSReturnsAutoreleased
	CursorNSConsumesSelf
	CursorNSConsumed
	CursorObjCException
	CursorObjCNSObject
	CursorObjCIndependentClass
	CursorObjCPreciseLifetime
	CursorObjCReturnsInnerPointer
	CursorObjCRequiresSuper
	CursorObjCRootClass
	CursorObjCSubclassingRestricted
	CursorObjCExplicitProtocolImpl
	CursorObjCDesignatedInitializer
	CursorObjCRuntimeVisible
	CursorObjCBoxable
	CursorFlagEnum
	CursorConvergentAttr
	CursorWarnUnusedAttr
	CursorWarnUnusedResultAttr
	CursorAlignedAttr
	CursorLastAttr = CursorAlignedAttr

	/* Preprocessing */
	CursorPreprocessingDirective = iota + 227 //500
	CursorMacroDefinition
	CursorMacroExpansion
	CursorMacroInstantiation = CursorMacroExpansion
	CursorInclusionDirective = 503
	CursorFirstPreprocessing = CursorPreprocessingDirective
	CursorLastPreprocessing  = CursorInclusionDirective

	/* Extra Declarations */
	/**
	 * A module import declaration.
	 */
	CursorModuleImportDecl = iota + 320 //600
	CursorTypeAliasTemplateDecl
	/**
	 * A static_assert or _Static_assert node
	 */
	CursorStaticAssert
	/**
	 * a friend declaration.
	 */
	CursorFriendDecl
	/**
	 * a concept declaration.
	 */
	CursorConceptDecl

	CursorFirstExtraDecl = CursorModuleImportDecl
	CursorLastExtraDecl  = CursorConceptDecl

	/**
	 * A code completion overload candidate.
	 */
	CursorOverloadCandidate = 700
)

/**
 * Opaque pointer representing client data that will be passed through
 * to various callbacks and visitors.
 */
type ClientData = c.Pointer

/**
 * Provides the contents of a file that has not yet been saved to disk.
 *
 * Each CXUnsavedFile instance provides the name of a file on the
 * system along with the current contents of that file that have not
 * yet been saved to disk.
 */
type UnsavedFile struct {
	/**
	 * The file whose contents have not yet been saved.
	 *
	 * This file must already exist in the file system.
	 */
	Filename *c.Char

	/**
	 * A buffer containing the unsaved contents of this file.
	 */
	Contents *c.Char

	/**
	 * The length of the unsaved contents of this buffer.
	 */
	Length c.Ulong
}

/**
 * Retrieves the source location associated with a given file/line/column
 * in a particular translation unit.
 */
// llgo:link (*TranslationUnit).wrapGetLocation C.wrap_clang_getLocation
func (t *TranslationUnit) wrapGetLocation(file File, line, column c.Uint, loc *SourceLocation) {}

func (t *TranslationUnit) GetLocation(file File, line, column c.Uint) (ret SourceLocation) {
	t.wrapGetLocation(file, line, column, &ret)
	return
}

/**
 * Retrieves the source location associated with a given character offset
 * in a particular translation unit.
 */
// llgo:link (*TranslationUnit).wrapGetLocationForOffset C.wrap_clang_getLocationForOffset
func (t *TranslationUnit) wrapGetLocationForOffset(file File, offset c.Uint, loc *SourceLocation) {}

func (t *TranslationUnit) GetLocationForOffset(file File, offset c.Uint) (ret SourceLocation) {
	t.wrapGetLocationForOffset(file, offset, &ret)
	return
}

/**
 * An "index" that consists of a set of translation units that would
 * typically be linked together into an executable or library.
 */
type Index struct {
	Unused [0]byte
}

/**
 * Provides a shared context for creating translation units.
 *
 * It provides two options:
 *
 * - excludeDeclarationsFromPCH: When non-zero, allows enumeration of "local"
 * declarations (when loading any new translation units). A "local" declaration
 * is one that belongs in the translation unit itself and not in a precompiled
 * header that was used by the translation unit. If zero, all declarations
 * will be enumerated.
 *
 * Here is an example:
 *
 * \code
 *   // excludeDeclsFromPCH = 1, displayDiagnostics=1
 *   Idx = clang_createIndex(1, 1);
 *
 *   // IndexTest.pch was produced with the following command:
 *   // "clang -x c IndexTest.h -emit-ast -o IndexTest.pch"
 *   TU = clang_createTranslationUnit(Idx, "IndexTest.pch");
 *
 *   // This will load all the symbols from 'IndexTest.pch'
 *   clang_visitChildren(clang_getTranslationUnitCursor(TU),
 *                       TranslationUnitVisitor, 0);
 *   clang_disposeTranslationUnit(TU);
 *
 *   // This will load all the symbols from 'IndexTest.c', excluding symbols
 *   // from 'IndexTest.pch'.
 *   char *args[] = { "-Xclang", "-include-pch=IndexTest.pch" };
 *   TU = clang_createTranslationUnitFromSourceFile(Idx, "IndexTest.c", 2, args,
 *                                                  0, 0);
 *   clang_visitChildren(clang_getTranslationUnitCursor(TU),
 *                       TranslationUnitVisitor, 0);
 *   clang_disposeTranslationUnit(TU);
 * \endcode
 *
 * This process of creating the 'pch', loading it separately, and using it (via
 * -include-pch) allows 'excludeDeclsFromPCH' to remove redundant callbacks
 * (which gives the indexer the same performance benefit as the compiler).
 */
//go:linkname CreateIndex C.clang_createIndex
func CreateIndex(excludeDeclarationsFromPCH, displayDiagnostics c.Int) *Index

/**
 * Destroy the given index.
 *
 * The index must not be destroyed until all of the translation units created
 * within that index have been destroyed.
 */
// llgo:link (*Index).Dispose C.clang_disposeIndex
func (*Index) Dispose() {}

/**
 * Flags that control the creation of translation units.
 *
 * The enumerators in this enumeration type are meant to be bitwise
 * ORed together to specify which options should be used when
 * constructing the translation unit.
 */
const (
	/**
	 * Used to indicate that no special translation-unit options are
	 * needed.
	 */
	TranslationUnit_None = 0x0
	/**
	 * Used to indicate that the parser should construct a "detailed"
	 * preprocessing record, including all macro definitions and instantiations.
	 *
	 * Constructing a detailed preprocessing record requires more memory
	 * and time to parse, since the information contained in the record
	 * is usually not retained. However, it can be useful for
	 * applications that require more detailed information about the
	 * behavior of the preprocessor.
	 */
	DetailedPreprocessingRecord = 0x01
)

/**
 * Same as \c clang_parseTranslationUnit2, but returns
 * the \c CXTranslationUnit instead of an error code.  In case of an error this
 * routine returns a \c NULL \c CXTranslationUnit, without further detailed
 * error codes.
 */
// llgo:link (*Index).ParseTranslationUnit C.clang_parseTranslationUnit
func (*Index) ParseTranslationUnit(
	sourceFilename *c.Char, commandLineArgs **c.Char, numCommandLineArgs c.Int,
	unsavedFiles *UnsavedFile, numUnsavedFiles c.Uint, options c.Uint) *TranslationUnit {
	return nil
}

/**
 * A single translation unit, which resides in an index.
 */
type TranslationUnit struct {
	Unused [0]byte
}

/**
 * Destroy the specified CXTranslationUnit object.
 */
// llgo:link (*TranslationUnit).Dispose C.clang_disposeTranslationUnit
func (*TranslationUnit) Dispose() {}

/**
 * Retrieve the cursor that represents the given translation unit.
 *
 * The translation unit cursor can be used to start traversing the
 * various declarations within the given translation unit.
 */

//llgo:link (*TranslationUnit).wrapCursor C.wrap_clang_getTranslationUnitCursor
func (t *TranslationUnit) wrapCursor(cursor *Cursor) {}

func (t *TranslationUnit) Cursor() (ret Cursor) {
	t.wrapCursor(&ret)
	return
}

/**
 * Describes the kind of entity that a cursor refers to.
 */
type CursorKind c.Int

/* for debug/testing */
// llgo:link CursorKind.String C.clang_getCursorKindSpelling
func (CursorKind) String() (ret String) {
	return
}

/**
 * A cursor representing some element in the abstract syntax tree for
 * a translation unit.
 *
 * The cursor abstraction unifies the different kinds of entities in a
 * program--declaration, statements, expressions, references to declarations,
 * etc.--under a single "cursor" abstraction with a common set of operations.
 * Common operation for a cursor include: getting the physical location in
 * a source file where the cursor points, getting the name associated with a
 * cursor, and retrieving cursors for any child nodes of a particular cursor.
 *
 * Cursors can be produced in two specific ways.
 * clang_getTranslationUnitCursor() produces a cursor for a translation unit,
 * from which one can use clang_visitChildren() to explore the rest of the
 * translation unit. clang_getCursor() maps from a physical source location
 * to the entity that resides at that location, allowing one to map from the
 * source code into the AST.
 */
type Cursor struct {
	Kind  CursorKind
	xdata c.Int
	data  [3]c.Pointer
}

type TypeKind c.Int

/**
 * Describes the kind of type
 */
const (
	/**
	 * Represents an invalid type (e.g., where no type is available).
	 */
	TypeInvalid TypeKind = iota

	/**
	 * A type whose specific kind is not exposed via this
	 * interface.
	 */
	TypeUnexposed

	/* Builtin types */
	TypeVoid
	TypeBool
	TypeCharU
	TypeUChar
	TypeChar16
	TypeChar32
	TypeUShort
	TypeUInt
	TypeULong
	TypeULongLong
	TypeUInt128
	TypeCharS
	TypeSChar
	TypeWChar
	TypeShort
	TypeInt
	TypeLong
	TypeLongLong
	TypeInt128
	TypeFloat
	TypeDouble
	TypeLongDouble
	TypeNullPtr
	TypeOverload
	TypeDependent
	TypeObjCId
	TypeObjCClass
	TypeObjCSel
	TypeFloat128
	TypeHalf
	TypeFloat16
	TypeShortAccum
	TypeAccum
	TypeLongAccum
	TypeUShortAccum
	TypeUAccum
	TypeULongAccum
	TypeBFloat16
	TypeIbm128

	TypeFirstBuiltin = TypeVoid
	TypeLastBuiltin  = TypeIbm128

	TypeComplex TypeKind = iota + 57 //  100
	TypePointer
	TypeBlockPointer
	TypeLValueReference
	TypeRValueReference
	TypeRecord
	TypeEnum
	TypeTypedef
	TypeObjCInterface
	TypeObjCObjectPointer
	TypeFunctionNoProto
	TypeFunctionProto
	TypeConstantArray
	TypeVector
	TypeIncompleteArray
	TypeVariableArray
	TypeDependentSizedArray
	TypeMemberPointer
	TypeAuto

	/**
	 * Represents a type that was referred to using an elaborated type keyword.
	 *
	 * E.g., struct S, or via a qualified name, e.g., N::M::type, or both.
	 */
	TypeElaborated

	/* OpenCL PipeType. */
	TypePipe

	/* OpenCL builtin types. */
	TypeOCLImage1dRO
	TypeOCLImage1dArrayRO
	TypeOCLImage1dBufferRO
	TypeOCLImage2dRO
	TypeOCLImage2dArrayRO
	TypeOCLImage2dDepthRO
	TypeOCLImage2dArrayDepthRO
	TypeOCLImage2dMSAARO
	TypeOCLImage2dArrayMSAARO
	TypeOCLImage2dMSAADepthRO
	TypeOCLImage2dArrayMSAADepthRO
	TypeOCLImage3dRO
	TypeOCLImage1dWO
	TypeOCLImage1dArrayWO
	TypeOCLImage1dBufferWO
	TypeOCLImage2dWO
	TypeOCLImage2dArrayWO
	TypeOCLImage2dDepthWO
	TypeOCLImage2dArrayDepthWO
	TypeOCLImage2dMSAAWO
	TypeOCLImage2dArrayMSAAWO
	TypeOCLImage2dMSAADepthWO
	TypeOCLImage2dArrayMSAADepthWO
	TypeOCLImage3dWO
	TypeOCLImage1dRW
	TypeOCLImage1dArrayRW
	TypeOCLImage1dBufferRW
	TypeOCLImage2dRW
	TypeOCLImage2dArrayRW
	TypeOCLImage2dDepthRW
	TypeOCLImage2dArrayDepthRW
	TypeOCLImage2dMSAARW
	TypeOCLImage2dArrayMSAARW
	TypeOCLImage2dMSAADepthRW
	TypeOCLImage2dArrayMSAADepthRW
	TypeOCLImage3dRW
	TypeOCLSampler
	TypeOCLEvent
	TypeOCLQueue
	TypeOCLReserveID

	TypeObjCObject
	TypeObjCTypeParam
	TypeAttributed

	TypeOCLIntelSubgroupAVCMcePayload
	TypeOCLIntelSubgroupAVCImePayload
	TypeOCLIntelSubgroupAVCRefPayload
	TypeOCLIntelSubgroupAVCSicPayload
	TypeOCLIntelSubgroupAVCMceResult
	TypeOCLIntelSubgroupAVCImeResult
	TypeOCLIntelSubgroupAVCRefResult
	TypeOCLIntelSubgroupAVCSicResult
	TypeOCLIntelSubgroupAVCImeResultSingleReferenceStreamout
	TypeOCLIntelSubgroupAVCImeResultDualReferenceStreamout
	TypeOCLIntelSubgroupAVCImeSingleReferenceStreamin
	TypeOCLIntelSubgroupAVCImeDualReferenceStreamin

	/* Old aliases for AVC OpenCL extension types. */
	TypeOCLIntelSubgroupAVCImeResultSingleRefStreamout = TypeOCLIntelSubgroupAVCImeResultSingleReferenceStreamout
	TypeOCLIntelSubgroupAVCImeResultDualRefStreamout   = TypeOCLIntelSubgroupAVCImeResultDualReferenceStreamout
	TypeOCLIntelSubgroupAVCImeSingleRefStreamin        = TypeOCLIntelSubgroupAVCImeSingleReferenceStreamin
	TypeOCLIntelSubgroupAVCImeDualRefStreamin          = TypeOCLIntelSubgroupAVCImeDualReferenceStreamin

	TypeExtVector = iota + 53 // 176
	TypeAtomic
	TypeBTFTagAttributed
)

/**
 * The type of an element in the abstract syntax tree.
 *
 */
type Type struct {
	Kind TypeKind
	data [2]c.Pointer
}

/**
 * A particular source file that is part of a translation unit.
 */
type File uintptr

/**
 * Identifies a specific source location within a translation
 * unit.
 *
 * Use clang_getExpansionLocation() or clang_getSpellingLocation()
 * to map a source location to a particular file, line, and column.
 */
type SourceLocation struct {
	ptrData [2]c.Pointer
	intData c.Uint
}

/**
 * Identifies a half-open character range in the source code.
 *
 * Use clang_getRangeStart() and clang_getRangeEnd() to retrieve the
 * starting and end locations from a source range, respectively.
 */
type SourceRange struct {
	ptrData      [2]c.Pointer
	beginIntData c.Uint
	endIntData   c.Uint
}

/**
 * Describes a kind of token.
 */
type TokenKind c.Int

const (
	/**
	 * A token that contains some kind of punctuation.
	 */
	Punctuation TokenKind = iota
	/**
	 * A language keyword.
	 */
	Keyword

	/**
	 * An identifier (that is not a keyword).
	 */
	Identifier
	/**
	 * A numeric, string, or character literal.
	 */
	Literal
	/**
	 * A comment.
	 */
	Comment
)

type Token struct {
	intData [4]c.Uint
	ptrData c.Pointer
}

/**
 * Determine whether two cursors are equivalent.
 */
// llgo:link (*Cursor).wrapEqual C.wrap_clang_equalCursors
func (*Cursor) wrapEqual(cursor *Cursor) c.Uint { return 0 }

func (c Cursor) Equal(cursor Cursor) c.Uint {
	return c.wrapEqual(&cursor)
}

/**
 * Returns non-zero if \p cursor is null.
 */
// llgo:link (*Cursor).wrapIsNull C.wrap_clang_Cursor_isNull
func (*Cursor) wrapIsNull() c.Int { return 0 }

func (c Cursor) IsNull() c.Int { return c.wrapIsNull() }

/**
 * Determine the semantic parent of the given cursor.
 *
 * The semantic parent of a cursor is the cursor that semantically contains
 * the given \p cursor. For many declarations, the lexical and semantic parents
 * are equivalent (the lexical parent is returned by
 * \c clang_getCursorLexicalParent()). They diverge when declarations or
 * definitions are provided out-of-line. For example:
 *
 * \code
 * class C {
 *  void f();
 * };
 *
 * void C::f() { }
 * \endcode
 *
 * In the out-of-line definition of \c C::f, the semantic parent is
 * the class \c C, of which this function is a member. The lexical parent is
 * the place where the declaration actually occurs in the source code; in this
 * case, the definition occurs in the translation unit. In general, the
 * lexical parent for a given entity can change without affecting the semantics
 * of the program, and the lexical parent of different declarations of the
 * same entity may be different. Changing the semantic parent of a declaration,
 * on the other hand, can have a major impact on semantics, and redeclarations
 * of a particular entity should all have the same semantic context.
 *
 * In the example above, both declarations of \c C::f have \c C as their
 * semantic context, while the lexical context of the first \c C::f is \c C
 * and the lexical context of the second \c C::f is the translation unit.
 *
 * For global declarations, the semantic parent is the translation unit.
 */
// llgo:link (*Cursor).wrapSemanticParent C.wrap_clang_getCursorSemanticParent
func (*Cursor) wrapSemanticParent(parent *Cursor) {}

func (c Cursor) SemanticParent() (parent Cursor) {
	c.wrapSemanticParent(&parent)
	return
}

// llgo:link (*Cursor).wrapDefinition C.wrap_clang_getCursorDefinition
func (*Cursor) wrapDefinition(def *Cursor) {}

func (c Cursor) Definition() (def Cursor) {
	c.wrapDefinition(&def)
	return
}

/**
 * Determine the lexical parent of the given cursor.
 *
 * The lexical parent of a cursor is the cursor in which the given \p cursor
 * was actually written. For many declarations, the lexical and semantic parents
 * are equivalent (the semantic parent is returned by
 * \c clang_getCursorSemanticParent()). They diverge when declarations or
 * definitions are provided out-of-line. For example:
 *
 * \code
 * class C {
 *  void f();
 * };
 *
 * void C::f() { }
 * \endcode
 *
 * In the out-of-line definition of \c C::f, the semantic parent is
 * the class \c C, of which this function is a member. The lexical parent is
 * the place where the declaration actually occurs in the source code; in this
 * case, the definition occurs in the translation unit. In general, the
 * lexical parent for a given entity can change without affecting the semantics
 * of the program, and the lexical parent of different declarations of the
 * same entity may be different. Changing the semantic parent of a declaration,
 * on the other hand, can have a major impact on semantics, and redeclarations
 * of a particular entity should all have the same semantic context.
 *
 * In the example above, both declarations of \c C::f have \c C as their
 * semantic context, while the lexical context of the first \c C::f is \c C
 * and the lexical context of the second \c C::f is the translation unit.
 *
 * For declarations written in the global scope, the lexical parent is
 * the translation unit.
 */
// llgo:link (*Cursor).wrapLexicalParent C.wrap_clang_getCursorLexicalParent
func (*Cursor) wrapLexicalParent(parent *Cursor) {}

func (c Cursor) LexicalParent() (parent Cursor) {
	c.wrapLexicalParent(&parent)
	return
}

/**
 * Determine the set of methods that are overridden by the given
 * method.
 *
 * In both Objective-C and C++, a method (aka virtual member function,
 * in C++) can override a virtual method in a base class. For
 * Objective-C, a method is said to override any method in the class's
 * base class, its protocols, or its categories' protocols, that has the same
 * selector and is of the same kind (class or instance).
 * If no such method exists, the search continues to the class's superclass,
 * its protocols, and its categories, and so on. A method from an Objective-C
 * implementation is considered to override the same methods as its
 * corresponding method in the interface.
 *
 * For C++, a virtual member function overrides any virtual member
 * function with the same signature that occurs in its base
 * classes. With multiple inheritance, a virtual member function can
 * override several virtual member functions coming from different
 * base classes.
 *
 * In all cases, this function determines the immediate overridden
 * method, rather than all of the overridden methods. For example, if
 * a method is originally declared in a class A, then overridden in B
 * (which in inherits from A) and also in C (which inherited from B),
 * then the only overridden method returned from this function when
 * invoked on C's method will be B's method. The client may then
 * invoke this function again, given the previously-found overridden
 * methods, to map out the complete method-override set.
 *
 * \param cursor A cursor representing an Objective-C or C++
 * method. This routine will compute the set of methods that this
 * method overrides.
 *
 * \param overridden A pointer whose pointee will be replaced with a
 * pointer to an array of cursors, representing the set of overridden
 * methods. If there are no overridden methods, the pointee will be
 * set to NULL. The pointee must be freed via a call to
 * \c clang_disposeOverriddenCursors().
 *
 * \param num_overridden A pointer to the number of overridden
 * functions, will be set to the number of overridden functions in the
 * array pointed to by \p overridden.
 */
// llgo:link (*Cursor).wrapOverriddenCursors C.wrap_clang_getOverriddenCursors
func (c *Cursor) wrapOverriddenCursors(overridden **Cursor, numOverridden *c.Uint) {}

func (c Cursor) OverriddenCursors(overridden **Cursor, numOverridden *c.Uint) {
	c.wrapOverriddenCursors(overridden, numOverridden)
}

/**
 * Free the set of overridden cursors returned by \c
 * clang_getOverriddenCursors().
 */
// llgo:link (*Cursor).DisposeOverriddenCursors C.clang_disposeOverriddenCursors
func (c *Cursor) DisposeOverriddenCursors() {}

/**
 * Retrieve the file that is included by the given inclusion directive
 * cursor.
 */
// llgo:link (*Cursor).wrapIncludedFile C.wrap_clang_getIncludedFile
func (c *Cursor) wrapIncludedFile() File {
	return 0
}

func (c Cursor) IncludedFile() (file File) {
	return c.wrapIncludedFile()
}

/**
 * Map a source location to the cursor that describes the entity at that
 * location in the source code.
 *
 * clang_getCursor() maps an arbitrary source location within a translation
 * unit down to the most specific cursor that describes the entity at that
 * location. For example, given an expression \c x + y, invoking
 * clang_getCursor() with a source location pointing to "x" will return the
 * cursor for "x"; similarly for "y". If the cursor points anywhere between
 * "x" or "y" (e.g., on the + or the whitespace around it), clang_getCursor()
 * will return a cursor referring to the "+" expression.
 *
 * \returns a cursor representing the entity at the given source location, or
 * a NULL cursor if no such entity can be found.
 */

// llgo:link (*TranslationUnit).wrapGetCursor C.wrap_clang_getCursor
func (l *TranslationUnit) wrapGetCursor(loc *SourceLocation, cur *Cursor) {}

func (l *TranslationUnit) GetCursor(loc *SourceLocation) (cur Cursor) {
	l.wrapGetCursor(loc, &cur)
	return
}

/**
 * Retrieve the physical location of the source constructor referenced
 * by the given cursor.
 *
 * The location of a declaration is typically the location of the name of that
 * declaration, where the name of that declaration would occur if it is
 * unnamed, or some keyword that introduces that particular declaration.
 * The location of a reference is where that reference occurs within the
 * source code.
 */
// llgo:link (*Cursor).wrapLocation C.wrap_clang_getCursorLocation
func (c *Cursor) wrapLocation(loc *SourceLocation) {}

func (c Cursor) Location() (loc SourceLocation) {
	c.wrapLocation(&loc)
	return
}

/**
 * Retrieve the physical extent of the source construct referenced by
 * the given cursor.
 *
 * The extent of a cursor starts with the file/line/column pointing at the
 * first character within the source construct that the cursor refers to and
 * ends with the last character within that source construct. For a
 * declaration, the extent covers the declaration itself. For a reference,
 * the extent covers the location of the reference (e.g., where the referenced
 * entity was actually used).
 */
// llgo:link (*Cursor).wrapExtent C.wrap_clang_getCursorExtent
func (c *Cursor) wrapExtent(loc *SourceRange) {}

func (c Cursor) Extent() (loc SourceRange) {
	c.wrapExtent(&loc)
	return
}

/**
 * Retrieve the type of a CXCursor (if any).
 */
// llgo:link (*Cursor).wrapType C.wrap_clang_getCursorType
func (c *Cursor) wrapType(ret *Type) {}

func (c Cursor) Type() (ret Type) {
	c.wrapType(&ret)
	return
}

/**
 * Pretty-print the underlying type using the rules of the
 * language of the translation unit from which it came.
 *
 * If the type is invalid, an empty string is returned.
 */
// llgo:link (*Type).wrapString C.wrap_clang_getTypeSpelling
func (t *Type) wrapString() (ret String) {
	return
}

func (t Type) String() (ret String) {
	return t.wrapString()
}

/**
 * Retrieve the underlying type of a typedef declaration.
 *
 * If the cursor does not reference a typedef declaration, an invalid type is
 * returned.
 */
// llgo:link (*Cursor).wrapTypedefDeclUnderlyingType C.wrap_clang_getTypedefDeclUnderlyingType
func (c *Cursor) wrapTypedefDeclUnderlyingType(ret *Type) { return }

func (c Cursor) TypedefDeclUnderlyingType() (ret Type) {
	c.wrapTypedefDeclUnderlyingType(&ret)
	return
}

/**
 * Retrieve the integer value of an enum constant declaration as a signed
 *  long long.
 *
 * If the cursor does not reference an enum constant declaration, LLONG_MIN is
 * returned. Since this is also potentially a valid constant value, the kind of
 * the cursor must be verified before calling this function.
 */
// llgo:link (*Cursor).wrapEnumConstantDeclValue C.wrap_clang_getEnumConstantDeclValue
func (*Cursor) wrapEnumConstantDeclValue() (ret c.LongLong) {
	return 0
}
func (c Cursor) EnumConstantDeclValue() (ret c.LongLong) {
	return c.wrapEnumConstantDeclValue()
}

/**
 * Retrieve the number of non-variadic arguments associated with a given
 * cursor.
 *
 * The number of arguments can be determined for calls as well as for
 * declarations of functions or methods. For other cursors -1 is returned.
 */
// llgo:link (*Cursor).wrapNumArguments C.wrap_clang_Cursor_getNumArguments
func (*Cursor) wrapNumArguments() (num c.Int) {
	return 0
}

func (c Cursor) NumArguments() (num c.Int) {
	return c.wrapNumArguments()
}

/**
 * Retrieve the argument cursor of a function or method.
 *
 * The argument cursor can be determined for calls as well as for declarations
 * of functions or methods. For other cursors and for invalid indices, an
 * invalid cursor is returned.
 */
// llgo:link (*Cursor).wrapArgument C.wrap_clang_Cursor_getArgument
func (*Cursor) wrapArgument(index c.Uint, arg *Cursor) {}

func (c Cursor) Argument(index c.Uint) (arg Cursor) {
	c.wrapArgument(index, &arg)
	return
}

/**
 * Return the canonical type for a CXType.
 *
 * Clang's type system explicitly models typedefs and all the ways
 * a specific type can be represented.  The canonical type is the underlying
 * type with all the "sugar" removed.  For example, if 'T' is a typedef
 * for 'int', the canonical type for 'T' would be 'int'.
 */
// llgo:link (*Type).wrapCanonicalType C.wrap_clang_getCanonicalType
func (t *Type) wrapCanonicalType(ret *Type) { return }

func (t Type) CanonicalType() (ret Type) {
	t.wrapCanonicalType(&ret)
	return
}

/**
 * Determine whether a CXType has the "const" qualifier set,
 * without looking through typedefs that may have added "const" at a
 * different level.
 */
// llgo:link (*Type).wrapIsConstQualifiedType C.wrap_clang_isConstQualifiedType
func (t *Type) wrapIsConstQualifiedType() (ret c.Uint) { return 0 }

func (t Type) IsConstQualifiedType() (ret c.Uint) {
	return t.wrapIsConstQualifiedType()
}

/**
 * Determine whether a  CXCursor that is a macro, is
 * function like.
 */
// llgo:link (*Cursor).wrapIsMacroFunctionLike C.wrap_clang_Cursor_isMacroFunctionLike
func (c *Cursor) wrapIsMacroFunctionLike() (ret c.Uint) { return 0 }

func (c Cursor) IsMacroFunctionLike() (ret c.Uint) {
	return c.wrapIsMacroFunctionLike()
}

/**
 * Determine whether a  CXCursor that is a macro, is a
 * builtin one.
 */
// llgo:link (*Cursor).wrapIsMacroBuiltin C.wrap_clang_Cursor_isMacroBuiltin
func (c *Cursor) wrapIsMacroBuiltin() (ret c.Uint) { return 0 }

func (c Cursor) IsMacroBuiltin() (ret c.Uint) {
	return c.wrapIsMacroBuiltin()
}

/**
 * Determine whether a  CXCursor that is a function declaration, is an
 * inline declaration.
 */
// llgo:link (*Cursor).wrapIsFunctionInlined C.wrap_clang_Cursor_isFunctionInlined
func (c *Cursor) wrapIsFunctionInlined() (ret c.Uint) { return 0 }

func (c Cursor) IsFunctionInlined() (ret c.Uint) {
	return c.wrapIsFunctionInlined()
}

/**
 * Determine whether a CXType has the "volatile" qualifier set,
 * without looking through typedefs that may have added "volatile" at
 * a different level.
 */
// llgo:link (*Type).wrapIsVolatileQualifiedType C.wrap_clang_isVolatileQualifiedType
func (t *Type) wrapIsVolatileQualifiedType() (ret c.Uint) { return 0 }

func (t Type) IsVolatileQualifiedType() (ret c.Uint) {
	return t.wrapIsVolatileQualifiedType()
}

/**
 * Determine whether a CXType has the "restrict" qualifier set,
 * without looking through typedefs that may have added "restrict" at a
 * different level.
 */
// llgo:link (*Type).wrapIsRestrictQualifiedType C.wrap_clang_isRestrictQualifiedType
func (t *Type) wrapIsRestrictQualifiedType() (ret c.Uint) { return 0 }

func (t Type) IsRestrictQualifiedType() (ret c.Uint) {
	return t.wrapIsRestrictQualifiedType()
}

/**
 * For pointer types, returns the type of the pointee.
 */
// llgo:link (*Type).wrapPointeeType C.wrap_clang_getPointeeType
func (t *Type) wrapPointeeType(ret *Type) { return }

func (t Type) PointeeType() (ret Type) {
	t.wrapPointeeType(&ret)
	return
}

/**
 * For reference types (e.g., "const int&"), returns the type that the
 * reference refers to (e.g "const int").
 *
 * Otherwise, returns the type itself.
 *
 * A type that has kind \c CXType_LValueReference or
 * \c CXType_RValueReference is a reference type.
 */
// llgo:link (*Type).wrapNonReferenceType C.wrap_clang_getNonReferenceType
func (t *Type) wrapNonReferenceType(ret *Type) { return }

func (t Type) NonReferenceType() (ret Type) {
	t.wrapNonReferenceType(&ret)
	return
}

/**
 * Return the cursor for the declaration of the given type.
 */
// llgo:link (*Type).wrapTypeDeclaration C.wrap_clang_getTypeDeclaration
func (t *Type) wrapTypeDeclaration(ret *Cursor) { return }

func (t Type) TypeDeclaration() (ret Cursor) {
	t.wrapTypeDeclaration(&ret)
	return
}

/**
 * Retrieve the spelling of a given CXTypeKind.
 */
// llgo:link TypeKind.String C.clang_getTypeKindSpelling
func (TypeKind) String() (ret String) {
	return
}

/**
 * Retrieve the return type associated with a function type.
 *
 * If a non-function type is passed in, an invalid type is returned.
 */
// llgo:link (*Type).wrapResultType C.wrap_clang_getResultType
func (t *Type) wrapResultType(ret *Type) { return }

func (t Type) ResultType() (ret Type) {
	t.wrapResultType(&ret)
	return
}

/**
 * Retrieve the number of non-variadic parameters associated with a
 * function type.
 *
 * If a non-function type is passed in, -1 is returned.
 */
// llgo:link (*Type).wrapNumArgTypes C.wrap_clang_getNumArgTypes
func (t *Type) wrapNumArgTypes() (num c.Int) { return 0 }

func (t Type) NumArgTypes() (num c.Int) {
	return t.wrapNumArgTypes()
}

/**
 * Retrieve the type of a parameter of a function type.
 *
 * If a non-function type is passed in or the function does not have enough
 * parameters, an invalid type is returned.
 */
// llgo:link (*Type).wrapArgType C.wrap_clang_getArgType
func (t *Type) wrapArgType(index c.Uint, argTyp *Type) { return }

func (t Type) ArgType(index c.Uint) (ret Type) {
	t.wrapArgType(index, &ret)
	return
}

/**
 * Return 1 if the CXType is a variadic function type, and 0 otherwise.
 */
// llgo:link (*Type).wrapIsFunctionTypeVariadic C.wrap_clang_isFunctionTypeVariadic
func (t *Type) wrapIsFunctionTypeVariadic() (ret c.Uint) { return 0 }

func (t Type) IsFunctionTypeVariadic() (ret c.Uint) { return t.wrapIsFunctionTypeVariadic() }

/**
 * Retrieve the return type associated with a given cursor.
 *
 * This only returns a valid type if the cursor refers to a function or method.
 */
// llgo:link (*Cursor).wrapResultType C.wrap_clang_getCursorResultType
func (c *Cursor) wrapResultType(ret *Type) {}

func (c Cursor) ResultType() (ret Type) {
	c.wrapResultType(&ret)
	return
}

/**
 * Return the element type of an array, complex, or vector type.
 *
 * If a type is passed in that is not an array, complex, or vector type,
 * an invalid type is returned.
 */
// llgo:link (*Type).wrapElementType C.wrap_clang_getElementType
func (t *Type) wrapElementType(ret *Type) { return }

func (t Type) ElementType() (ret Type) {
	t.wrapElementType(&ret)
	return
}

/**
 * Return the element type of an array type.
 *
 * If a non-array type is passed in, an invalid type is returned.
 */
// llgo:link (*Type).wrapArrayElementType C.wrap_clang_getArrayElementType
func (t *Type) wrapArrayElementType(ret *Type) { return }

func (t Type) ArrayElementType() (ret Type) {
	t.wrapArrayElementType(&ret)
	return
}

/**
 * Return the array size of a constant array.
 *
 * If a non-array type is passed in, -1 is returned.
 */
// llgo:link (*Type).wrapArraySize C.wrap_clang_getArraySize
func (t *Type) wrapArraySize() (ret c.LongLong) { return 0 }

func (t Type) ArraySize() (ret c.LongLong) {
	return t.wrapArraySize()
}

/**
 * Retrieve the type named by the qualified-id.
 *
 * If a non-elaborated type is passed in, an invalid type is returned.
 */
// llgo:link (*Type).wrapNamedType C.wrap_clang_Type_getNamedType
func (t *Type) wrapNamedType(ret *Type) { return }

func (t Type) NamedType() (ret Type) {
	t.wrapNamedType(&ret)
	return
}

/**
 * Determine whether the given cursor represents an anonymous
 * tag or namespace
 */
// llgo:link (*Cursor).wrapIsAnonymous C.wrap_clang_Cursor_isAnonymous
func (c *Cursor) wrapIsAnonymous() (ret c.Uint) {
	return 0
}

func (c Cursor) IsAnonymous() (ret c.Uint) {
	return c.wrapIsAnonymous()
}

/**
 * Determine whether the given cursor represents an anonymous record
 * declaration.
 */
// llgo:link (*Cursor).wrapIsAnonymousRecordDecl C.wrap_clang_Cursor_isAnonymousRecordDecl
func (c *Cursor) wrapIsAnonymousRecordDecl() (ret c.Uint) {
	return 0
}

func (c Cursor) IsAnonymousRecordDecl() (ret c.Uint) {
	return c.wrapIsAnonymousRecordDecl()
}

/**
 * Represents the C++ access control level to a base class for a
 * cursor with kind CX_CXXBaseSpecifier.
 */
type CXXAccessSpecifier c.Int

const (
	CXXInvalidAccessSpecifier CXXAccessSpecifier = iota
	CXXPublic
	CXXProtected
	CXXPrivate
)

/**
 * Returns the access control level for the referenced object.
 *
 * If the cursor refers to a C++ declaration, its access control level within
 * its parent scope is returned. Otherwise, if the cursor refers to a base
 * specifier or access specifier, the specifier itself is returned.
 */
// llgo:link (*Cursor).wrapCXXAccessSpecifier C.wrap_clang_getCXXAccessSpecifier
func (*Cursor) wrapCXXAccessSpecifier() (spec CXXAccessSpecifier) {
	return 0
}

func (c Cursor) CXXAccessSpecifier() CXXAccessSpecifier {
	return c.wrapCXXAccessSpecifier()
}

type StorageClass c.Int

/**
 * Represents the storage classes as declared in the source. CX_SC_Invalid
 * was added for the case that the passed cursor in not a declaration.
 */
const (
	SCInvalid StorageClass = iota
	SCNone
	SCExtern
	SCStatic
	SCPrivateExtern
	SCOpenCLWorkGroupLocal
	SCAuto
	SCRegister
)

/**
 * Returns the storage class for a function or variable declaration.
 *
 * If the passed in Cursor is not a function or variable declaration,
 * CX_SC_Invalid is returned else the storage class.
 */
// llgo:link (*Cursor).wrapStorageClass C.wrap_clang_Cursor_getStorageClass
func (*Cursor) wrapStorageClass() (ret StorageClass) {
	return 0
}

func (c Cursor) StorageClass() (ret StorageClass) {
	return c.wrapStorageClass()
}

/**
 * Retrieve a Unified Symbol Resolution (USR) for the entity referenced
 * by the given cursor.
 *
 * A Unified Symbol Resolution (USR) is a string that identifies a particular
 * entity (function, class, variable, etc.) within a program. USRs can be
 * compared across translation units to determine, e.g., when references in
 * one translation refer to an entity defined in another translation unit.
 */
// llgo:link (*Cursor).wrapUSR C.wrap_clang_getCursorUSR
func (*Cursor) wrapUSR() (ret String) {
	return
}

func (c Cursor) USR() (ret String) {
	return c.wrapUSR()
}

/**
 * Retrieve a name for the entity referenced by this cursor.
 */
// llgo:link (*Cursor).wrapString C.wrap_clang_getCursorSpelling
func (*Cursor) wrapString() (ret String) {
	return
}

func (c Cursor) String() (ret String) {
	return c.wrapString()
}

/**
 * Retrieve the display name for the entity referenced by this cursor.
 *
 * The display name contains extra information that helps identify the cursor,
 * such as the parameters of a function or template or the arguments of a
 * class template specialization.
 */
// llgo:link (*Cursor).wrapDisplayName C.wrap_clang_getCursorDisplayName
func (*Cursor) wrapDisplayName() (ret String) {
	return
}
func (c Cursor) DisplayName() (ret String) {
	return c.wrapDisplayName()
}

/** For a cursor that is a reference, retrieve a cursor representing the
 * entity that it references.
 *
 * Reference cursors refer to other entities in the AST. For example, an
 * Objective-C superclass reference cursor refers to an Objective-C class.
 * This function produces the cursor for the Objective-C class from the
 * cursor for the superclass reference. If the input cursor is a declaration or
 * definition, it returns that declaration or definition unchanged.
 * Otherwise, returns the NULL cursor.
 */
// llgo:link (*Cursor).wrapReferenced C.wrap_clang_getCursorReferenced
func (*Cursor) wrapReferenced(referenced *Cursor) {}

func (c Cursor) Referenced() (referenced Cursor) {
	c.wrapReferenced(&referenced)
	return
}

/**
 * Returns non-zero if the given cursor is a variadic function or method.
 */
// llgo:link (*Cursor).wrapIsVariadic C.wrap_clang_Cursor_isVariadic
func (*Cursor) wrapIsVariadic() (ret c.Uint) { return 0 }

func (c Cursor) IsVariadic() (ret c.Uint) { return c.wrapIsVariadic() }

/**
 * Given a cursor that represents a declaration, return the associated
 * comment's source range.  The range may include multiple consecutive comments
 * with whitespace in between.
 */
// llgo:link (*Cursor).wrapCommentRange C.wrap_clang_Cursor_getCommentRange
func (c *Cursor) wrapCommentRange(ret *SourceRange) {}

func (c Cursor) CommentRange() (loc SourceRange) {
	c.wrapCommentRange(&loc)
	return
}

/**
 * Given a cursor that represents a declaration, return the associated
 * comment text, including comment markers.
 */
// llgo:link (*Cursor).wrapRawCommentText C.wrap_clang_Cursor_getRawCommentText
func (c *Cursor) wrapRawCommentText() (ret String) {
	return
}

func (c Cursor) RawCommentText() (ret String) {
	return c.wrapRawCommentText()
}

/**
 * Retrieve a name for the entity referenced by this cursor.
 */
// llgo:link (*Cursor).wrapMangling C.wrap_clang_Cursor_getMangling
func (*Cursor) wrapMangling() (ret String) {
	return
}

func (c Cursor) Mangling() (ret String) {
	return c.wrapMangling()
}

/**
 * Determine if a C++ constructor is a converting constructor.
 */
// llgo:link (*Cursor).wrapIsConvertingConstructor C.wrap_clang_CXXConstructor_isConvertingConstructor
func (c *Cursor) wrapIsConvertingConstructor() (ret c.Uint) {
	return 0
}

func (c Cursor) IsConvertingConstructor() (ret c.Uint) {
	return c.wrapIsConvertingConstructor()
}

/**
 * Determine if a C++ constructor is a copy constructor.
 */
// llgo:link (*Cursor).wrapIsCopyConstructor C.wrap_clang_CXXConstructor_isCopyConstructor
func (c *Cursor) wrapIsCopyConstructor() (ret c.Uint) {
	return 0
}
func (c Cursor) IsCopyConstructor() (ret c.Uint) {
	return c.wrapIsCopyConstructor()
}

/**
 * Determine if a C++ constructor is the default constructor.
 */
// llgo:link (*Cursor).wrapIsDefaultConstructor C.wrap_clang_CXXConstructor_isDefaultConstructor
func (c *Cursor) wrapIsDefaultConstructor() (ret c.Uint) {
	return 0
}
func (c Cursor) IsDefaultConstructor() (ret c.Uint) {
	return c.wrapIsDefaultConstructor()
}

/**
 * Determine if a C++ constructor is a move constructor.
 */
// llgo:link (*Cursor).wrapIsMoveConstructor C.wrap_clang_CXXConstructor_isMoveConstructor
func (c *Cursor) wrapIsMoveConstructor() (ret c.Uint) {
	return 0
}
func (c Cursor) IsMoveConstructor() (ret c.Uint) {
	return c.wrapIsMoveConstructor()
}

/**
 * Determine if a C++ field is declared 'mutable'.
 */
// llgo:link (*Cursor).wrapIsMutable C.wrap_clang_CXXField_isMutable
func (c *Cursor) wrapIsMutable() (ret c.Uint) {
	return 0
}
func (c Cursor) IsMutable() (ret c.Uint) {
	return c.wrapIsMutable()
}

/**
 * Determine if a C++ method is declared '= default'.
 */
// llgo:link (*Cursor).wrapIsDefaulted C.wrap_clang_CXXMethod_isDefaulted
func (c *Cursor) wrapIsDefaulted() (ret c.Uint) {
	return 0
}
func (c Cursor) IsDefaulted() (ret c.Uint) {
	return c.wrapIsDefaulted()
}

/**
 * Determine if a C++ method is declared '= delete'.
 */
// llgo:link (*Cursor).wrapIsDeleted C.wrap_clang_CXXMethod_isDeleted
func (c *Cursor) wrapIsDeleted() (ret c.Uint) {
	return 0
}
func (c Cursor) IsDeleted() (ret c.Uint) {
	return c.wrapIsDeleted()
}

/**
 * Determine if a C++ member function or member function template is
 * pure virtual.
 */
// llgo:link (*Cursor).wrapIsPureVirtual C.wrap_clang_CXXMethod_isPureVirtual
func (c *Cursor) wrapIsPureVirtual() (ret c.Uint) {
	return 0
}
func (c Cursor) IsPureVirtual() (ret c.Uint) {
	return c.wrapIsPureVirtual()
}

/**
 * Determine if a C++ member function or member function template is
 * declared 'static'.
 */
// llgo:link (*Cursor).wrapIsStatic C.wrap_clang_CXXMethod_isStatic
func (c *Cursor) wrapIsStatic() (ret c.Uint) {
	return 0
}
func (c Cursor) IsStatic() (ret c.Uint) {
	return c.wrapIsStatic()
}

/**
 * Determine if a C++ member function or member function template is
 * explicitly declared 'virtual' or if it overrides a virtual method from
 * one of the base classes.
 */
// llgo:link (*Cursor).wrapIsVirtual C.wrap_clang_CXXMethod_isVirtual
func (c *Cursor) wrapIsVirtual() (ret c.Uint) {
	return 0
}
func (c Cursor) IsVirtual() (ret c.Uint) {
	return c.wrapIsVirtual()
}

/**
 * Determine if a C++ member function is a copy-assignment operator,
 * returning 1 if such is the case and 0 otherwise.
 *
 * > A copy-assignment operator `X::operator=` is a non-static,
 * > non-template member function of _class_ `X` with exactly one
 * > parameter of type `X`, `X&`, `const X&`, `volatile X&` or `const
 * > volatile X&`.
 *
 * That is, for example, the `operator=` in:
 *
 *    class Foo {
 *        bool operator=(const volatile Foo&);
 *    };
 *
 * Is a copy-assignment operator, while the `operator=` in:
 *
 *    class Bar {
 *        bool operator=(const int&);
 *    };
 *
 * Is not.
 */
// llgo:link (*Cursor).wrapIsCopyAssignmentOperator C.wrap_clang_CXXMethod_isCopyAssignmentOperator
func (c *Cursor) wrapIsCopyAssignmentOperator() (ret c.Uint) {
	return 0
}
func (c Cursor) IsCopyAssignmentOperator() (ret c.Uint) {
	return c.wrapIsCopyAssignmentOperator()
}

/**
 * Determine if a C++ member function is a move-assignment operator,
 * returning 1 if such is the case and 0 otherwise.
 *
 * > A move-assignment operator `X::operator=` is a non-static,
 * > non-template member function of _class_ `X` with exactly one
 * > parameter of type `X&&`, `const X&&`, `volatile X&&` or `const
 * > volatile X&&`.
 *
 * That is, for example, the `operator=` in:
 *
 *    class Foo {
 *        bool operator=(const volatile Foo&&);
 *    };
 *
 * Is a move-assignment operator, while the `operator=` in:
 *
 *    class Bar {
 *        bool operator=(const int&&);
 *    };
 *
 * Is not.
 */
// llgo:link (*Cursor).wrapIsMoveAssignmentOperator C.wrap_clang_CXXMethod_isMoveAssignmentOperator
func (c *Cursor) wrapIsMoveAssignmentOperator() (ret c.Uint) {
	return 0
}
func (c Cursor) IsMoveAssignmentOperator() (ret c.Uint) {
	return c.wrapIsMoveAssignmentOperator()
}

/**
 * Determines if a C++ constructor or conversion function was declared
 * explicit, returning 1 if such is the case and 0 otherwise.
 *
 * Constructors or conversion functions are declared explicit through
 * the use of the explicit specifier.
 *
 * For example, the following constructor and conversion function are
 * not explicit as they lack the explicit specifier:
 *
 *     class Foo {
 *         Foo();
 *         operator int();
 *     };
 *
 * While the following constructor and conversion function are
 * explicit as they are declared with the explicit specifier.
 *
 *     class Foo {
 *         explicit Foo();
 *         explicit operator int();
 *     };
 *
 * This function will return 0 when given a cursor pointing to one of
 * the former declarations and it will return 1 for a cursor pointing
 * to the latter declarations.
 *
 * The explicit specifier allows the user to specify a
 * conditional compile-time expression whose value decides
 * whether the marked element is explicit or not.
 *
 * For example:
 *
 *     constexpr bool foo(int i) { return i % 2 == 0; }
 *
 *     class Foo {
 *          explicit(foo(1)) Foo();
 *          explicit(foo(2)) operator int();
 *     }
 *
 * This function will return 0 for the constructor and 1 for
 * the conversion function.
 */
// llgo:link (*Cursor).wrapIsExplicit C.wrap_clang_CXXMethod_isExplicit
func (c *Cursor) wrapIsExplicit() (ret c.Uint) {
	return 0
}
func (c Cursor) IsExplicit() (ret c.Uint) {
	return c.wrapIsExplicit()
}

/**
 * Determine if a C++ record is abstract, i.e. whether a class or struct
 * has a pure virtual member function.
 */
// llgo:link (*Cursor).wrapIsAbstract C.wrap_clang_CXXRecord_isAbstract
func (c *Cursor) wrapIsAbstract() (ret c.Uint) {
	return 0
}
func (c Cursor) IsAbstract() (ret c.Uint) {
	return c.wrapIsAbstract()
}

/**
 * Determine if an enum declaration refers to a scoped enum.
 */
// llgo:link (*Cursor).wrapIsScoped C.wrap_clang_EnumDecl_isScoped
func (c *Cursor) wrapIsScoped() (ret c.Uint) {
	return 0
}
func (c Cursor) IsScoped() (ret c.Uint) {
	return c.wrapIsScoped()
}

/**
 * Determine if a C++ member function or member function template is
 * declared 'const'.
 */
// llgo:link (*Cursor).wrapIsConst C.wrap_clang_CXXMethod_isConst
func (c *Cursor) wrapIsConst() (ret c.Uint) {
	return 0
}
func (c Cursor) IsConst() (ret c.Uint) {
	return c.wrapIsConst()
}

/**
 * Determine the kind of the given token.
 */
// llgo:link (*Token).wrapKind C.wrap_clang_getTokenKind
func (c *Token) wrapKind() (ret TokenKind) {
	return
}

func (c Token) Kind() (ret TokenKind) {
	return c.wrapKind()
}

/**
 * Determine the spelling of the given token.
 *
 * The spelling of a token is the textual representation of that token, e.g.,
 * the text of an identifier or keyword.
 */
// llgo:link (*TranslationUnit).wrapToken C.wrap_clang_getTokenSpelling
func (*TranslationUnit) wrapToken(token *Token) (ret String) {
	return
}

func (c *TranslationUnit) Token(token Token) (ret String) {
	return c.wrapToken(&token)
}

/**
 * Describes how the traversal of the children of a particular
 * cursor should proceed after visiting a particular child cursor.
 *
 * A value of this enumeration type should be returned by each
 * \c CXCursorVisitor to indicate how clang_visitChildren() proceed.
 */
type ChildVisitResult c.Int

const (
	/**
	 * Terminates the cursor traversal.
	 */
	ChildVisit_Break ChildVisitResult = iota
	/**
	 * Continues the cursor traversal with the next sibling of
	 * the cursor just visited, without visiting its children.
	 */
	ChildVisit_Continue
	/**
	 * Recursively traverse the children of this cursor, using
	 * the same visitor and client data.
	 */
	ChildVisit_Recurse
)

/**
 * Visit the children of a particular cursor.
 *
 * This function visits all the direct children of the given cursor,
 * invoking the given \p visitor function with the cursors of each
 * visited child. The traversal may be recursive, if the visitor returns
 * \c CXChildVisit_Recurse. The traversal may also be ended prematurely, if
 * the visitor returns \c CXChildVisit_Break.
 *
 * \param parent the cursor whose child may be visited. All kinds of
 * cursors can be visited, including invalid cursors (which, by
 * definition, have no children).
 *
 * \param visitor the visitor function that will be invoked for each
 * child of \p parent.
 *
 * \param client_data pointer data supplied by the client, which will
 * be passed to the visitor each time it is invoked.
 *
 * \returns a non-zero value if the traversal was terminated
 * prematurely by the visitor returning \c CXChildVisit_Break.
 */
//go:linkname wrapVisitChildren C.wrap_clang_visitChildren
func wrapVisitChildren(
	cusor *Cursor,
	fn wrapVisitor,
	clientData ClientData) c.Uint {
	return 0
}

//llgo:type C
type wrapVisitor func(cursor, parent *Cursor, clientData ClientData) ChildVisitResult

type wrapData struct {
	data ClientData
	fn   Visitor
}

func VisitChildren(
	root Cursor,
	fn Visitor,
	clientData ClientData) c.Uint {
	return wrapVisitChildren(&root, func(cursor, parent *Cursor, data ClientData) ChildVisitResult {
		p := (*wrapData)(data)
		return p.fn(*cursor, *parent, p.data)
	}, unsafe.Pointer(&wrapData{clientData, fn}))
}

//llgo:type C
type Visitor func(cursor, parent Cursor, clientData ClientData) ChildVisitResult

/**
 * Visitor invoked for each file in a translation unit
 *        (used with clang_getInclusions()).
 *
 * This visitor function will be invoked by clang_getInclusions() for each
 * file included (either at the top-level or by \#include directives) within
 * a translation unit.  The first argument is the file being included, and
 * the second and third arguments provide the inclusion stack.  The
 * array is sorted in order of immediate inclusion.  For example,
 * the first element refers to the location that included 'included_file'.
 */
//llgo:type C
type InclusionVisitor func(included_file File, inclusion_stack *SourceLocation, include_len c.Uint, client_data ClientData)

/**
 * Visit the set of preprocessor inclusions in a translation unit.
 *   The visitor function is called with the provided data for every included
 *   file.  This does not include headers included by the PCH file (unless one
 *   is inspecting the inclusions in the PCH file itself).
 */
//go:linkname GetInclusions C.clang_getInclusions
func GetInclusions(tu *TranslationUnit, visitor InclusionVisitor, client_data ClientData)

/**
 * Tokenize the source code described by the given range into raw
 * lexical tokens.
 *
 * \param TU the translation unit whose text is being tokenized.
 *
 * \param Range the source range in which text should be tokenized. All of the
 * tokens produced by tokenization will fall within this source range,
 *
 * \param Tokens this pointer will be set to point to the array of tokens
 * that occur within the given source range. The returned pointer must be
 * freed with clang_disposeTokens() before the translation unit is destroyed.
 *
 * \param NumTokens will be set to the number of tokens in the \c *Tokens
 * array.
 *
 */
// llgo:link (*TranslationUnit).wrapTokenize C.wrap_clang_tokenize
func (t *TranslationUnit) wrapTokenize(ran *SourceRange, tokens **Token, numTokens *c.Uint) {}

func (t *TranslationUnit) Tokenize(ran SourceRange, tokens **Token, numTokens *c.Uint) {
	t.wrapTokenize(&ran, tokens, numTokens)
}

/**
 * Free the given set of tokens.
 */
// llgo:link (*TranslationUnit).DisposeTokens C.clang_disposeTokens
func (t *TranslationUnit) DisposeTokens(tokens *Token, numTokens c.Uint) {}

/**
 * Returns non-zero if the given source location is in a system header.
 */
// llgo:link (*SourceLocation).wrapIsInSystemHeader C.wrap_clang_Location_isInSystemHeader
func (l *SourceLocation) wrapIsInSystemHeader() (ret c.Uint) { return 0 }

func (l SourceLocation) IsInSystemHeader() (ret c.Uint) {
	return l.wrapIsInSystemHeader()
}

/**
 * Retrieve the file, line, column, and offset represented by
 * the given source location.
 *
 * If the location refers into a macro instantiation, return where the
 * location was originally spelled in the source file.
 *
 * \param location the location within a source file that will be decomposed
 * into its parts.
 *
 * \param file [out] if non-NULL, will be set to the file to which the given
 * source location points.
 *
 * \param line [out] if non-NULL, will be set to the line to which the given
 * source location points.
 *
 * \param column [out] if non-NULL, will be set to the column to which the given
 * source location points.
 *
 * \param offset [out] if non-NULL, will be set to the offset into the
 * buffer to which the given source location points.
 */
// llgo:link (*SourceLocation).wrapSpellingLocation C.wrap_clang_getSpellingLocation
func (l *SourceLocation) wrapSpellingLocation(file *File, line, column, offset *c.Uint) {}

func (l SourceLocation) SpellingLocation(file *File, line, column, offset *c.Uint) {
	l.wrapSpellingLocation(file, line, column, offset)
}

func (l SourceLocation) File() (ret File) {
	l.wrapSpellingLocation(&ret, nil, nil, nil)
	return
}

func (l SourceLocation) Line() (ret c.Uint) {
	l.wrapSpellingLocation(nil, &ret, nil, nil)
	return
}

func (l SourceLocation) Column() (ret c.Uint) {
	l.wrapSpellingLocation(nil, nil, &ret, nil)
	return
}

func (l SourceLocation) Offset() (ret c.Uint) {
	l.wrapSpellingLocation(nil, nil, nil, &ret)
	return
}

/**
 * Retrieve a source location representing the first character within a
 * source range.
 */
// llgo:link (*SourceRange).wrapRangeStart C.wrap_clang_getRangeStart
func (r *SourceRange) wrapRangeStart(loc *SourceLocation) { return }

func (r SourceRange) RangeStart() (loc SourceLocation) {
	r.wrapRangeStart(&loc)
	return
}

/**
 * Retrieve a source location representing the last character within a
 * source range.
 */
// llgo:link (*SourceRange).wrapRangeEnd C.wrap_clang_getRangeEnd
func (r *SourceRange) wrapRangeEnd(loc *SourceLocation) { return }

func (r SourceRange) RangeEnd() (loc SourceLocation) {
	r.wrapRangeEnd(&loc)
	return
}

//llgo:link File.FileName C.clang_getFileName
func (File) FileName() (ret String) { return }
