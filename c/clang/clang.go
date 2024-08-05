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
	UnexposedDecl CursorKind = iota + 1

	/** A C or C++ struct. */
	StructDecl

	/** A C or C++ union. */
	UnionDecl

	/** A C++ class. */
	ClassDecl

	/** An enumeration. */
	EnumDecl

	/**
	 * A field (in C) or non-static data member (in C++) in a
	 * struct, union, or C++ class.
	 */
	FieldDecl

	/** An enumerator constant. */
	EnumConstantDecl

	/** A function. */
	FunctionDecl

	/** A variable. */
	VarDecl

	/** A function or method parameter. */
	ParmDecl

	/** An Objective-C \@interface. */
	ObjCInterfaceDecl

	/** An Objective-C \@interface for a category. */
	ObjCCategoryDecl

	/** An Objective-C \@protocol declaration. */
	ObjCProtocolDecl

	/** An Objective-C \@property declaration. */
	ObjCPropertyDecl

	/** An Objective-C instance variable. */
	ObjCIvarDecl

	/** An Objective-C instance method. */
	ObjCInstanceMethodDecl

	/** An Objective-C class method. */
	ObjCClassMethodDecl

	/** An Objective-C \@implementation. */
	ObjCImplementationDecl

	/** An Objective-C \@implementation for a category. */
	ObjCCategoryImplDecl

	/** A typedef. */
	TypedefDecl

	/** A C++ class method. */
	CXXMethod

	/** A C++ namespace. */
	Namespace

	/** A linkage specification, e.g. 'extern "C"'. */
	LinkageSpec

	/** A C++ constructor. */
	Constructor

	/** A C++ destructor. */
	Destructor

	/** A C++ conversion function. */
	ConversionFunction

	/** A C++ template type parameter. */
	TemplateTypeParameter

	/** A C++ non-type template parameter. */
	NonTypeTemplateParameter

	/** A C++ template template parameter. */
	TemplateTemplateParameter

	/** A C++ function template. */
	FunctionTemplate

	/** A C++ class template. */
	ClassTemplate

	/** A C++ class template partial specialization. */
	ClassTemplatePartialSpecialization

	/** A C++ namespace alias declaration. */
	NamespaceAlias

	/** A C++ using directive. */
	UsingDirective

	/** A C++ using declaration. */
	UsingDeclaration

	/** A C++ alias declaration */
	TypeAliasDecl

	/** An Objective-C \@synthesize definition. */
	ObjCSynthesizeDecl

	/** An Objective-C \@dynamic definition. */
	ObjCDynamicDecl

	/** An access specifier. */
	CXXAccessSpecifier

	FirstDecl = UnexposedDecl
	LastDecl  = CXXAccessSpecifier

	/* References */
	FirstRef          = 40
	ObjCSuperClassRef = iota - 2 //40
	ObjCProtocolRef
	ObjCClassRef

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
	TypeRef

	CXXBaseSpecifier

	/**
	 * A reference to a class template, function template, template
	 * template parameter, or class template partial specialization.
	 */
	TemplateRef

	/**
	 * A reference to a namespace or namespace alias.
	 */
	NamespaceRef

	/**
	 * A reference to a member of a struct, union, or class that occurs in
	 * some non-expression context, e.g., a designated initializer.
	 */
	MemberRef

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
	LabelRef

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
	OverloadedDeclRef

	/**
	 * A reference to a variable that occurs in some non-expression
	 * context, e.g., a C++ lambda capture list.
	 */
	VariableRef

	LastRef = VariableRef

	/* Error conditions */
	FirstInvalid = 70
	InvalidFile  = iota + 15 //70
	NoDeclFound
	NotImplemented
	InvalidCode
	LastInvalid = InvalidCode

	/* Expressions */
	FirstExpr = 100

	/**
	 * An expression whose specific kind is not exposed via this
	 * interface.
	 *
	 * Unexposed expressions have the same operations as any other kind
	 * of expression; one can extract their location information,
	 * spelling, children, etc. However, the specific kind of the
	 * expression is not reported.
	 */
	UnexposedExpr = iota + 39 //100

	/**
	 * An expression that refers to some value declaration, such
	 * as a function, variable, or enumerator.
	 */
	DeclRefExpr

	/**
	 * An expression that refers to a member of a struct, union,
	 * class, Objective-C class, etc.
	 */
	MemberRefExpr

	/** An expression that calls a function. */
	CallExpr

	/** An expression that sends a message to an Objective-C
	object or class. */
	ObjCMessageExpr

	/** An expression that represents a block literal. */
	BlockExpr

	/** An integer literal.
	 */
	IntegerLiteral

	/** A floating point number literal.
	 */
	FloatingLiteral

	/** An imaginary number literal.
	 */
	ImaginaryLiteral

	/** A string literal.
	 */
	StringLiteral

	/** A character literal.
	 */
	CharacterLiteral

	/** A parenthesized expression, e.g. "(1)".
	 *
	 * This AST node is only formed if full location information is requested.
	 */
	ParenExpr

	/** This represents the unary-expression's (except sizeof and
	 * alignof).
	 */
	UnaryOperator

	/** [C99 6.5.2.1] Array Subscripting.
	 */
	ArraySubscriptExpr

	/** A builtin binary operation expression such as "x + y" or
	 * "x <= y".
	 */
	BinaryOperator

	/** Compound assignment such as "+=".
	 */
	CompoundAssignOperator

	/** The ?: ternary operator.
	 */
	ConditionalOperator

	/** An explicit cast in C (C99 6.5.4) or a C-style cast in C++
	 * (C++ [expr.cast]), which uses the syntax (Type)expr.
	 *
	 * For example: (int)f.
	 */
	CStyleCastExpr

	/** [C99 6.5.2.5]
	 */
	CompoundLiteralExpr

	/** Describes an C or C++ initializer list.
	 */
	InitListExpr

	/** The GNU address of label extension, representing &&label.
	 */
	AddrLabelExpr

	/** This is the GNU Statement Expression extension: ({int X=4; X;})
	 */
	StmtExpr

	/** Represents a C11 generic selection.
	 */
	GenericSelectionExpr

	/** Implements the GNU __null extension, which is a name for a null
	 * pointer constant that has integral type (e.g., int or long) and is the same
	 * size and alignment as a pointer.
	 *
	 * The __null extension is typically only used by system headers, which define
	 * NULL as __null in C++ rather than using 0 (which is an integer that may not
	 * match the size of a pointer).
	 */
	GNUNullExpr

	/** C++'s static_cast<> expression.
	 */
	CXXStaticCastExpr

	/** C++'s dynamic_cast<> expression.
	 */
	CXXDynamicCastExpr

	/** C++'s reinterpret_cast<> expression.
	 */
	CXXReinterpretCastExpr

	/** C++'s const_cast<> expression.
	 */
	CXXConstCastExpr

	/** Represents an explicit C++ type conversion that uses "functional"
	 * notion (C++ [expr.type.conv]).
	 *
	 * Example:
	 * \code
	 *   x = int(0.5);
	 * \endcode
	 */
	CXXFunctionalCastExpr

	/** A C++ typeid expression (C++ [expr.typeid]).
	 */
	CXXTypeidExpr

	/** [C++ 2.13.5] C++ Boolean Literal.
	 */
	CXXBoolLiteralExpr

	/** [C++0x 2.14.7] C++ Pointer Literal.
	 */
	CXXNullPtrLiteralExpr

	/** Represents the "this" expression in C++
	 */
	CXXThisExpr

	/** [C++ 15] C++ Throw Expression.
	 *
	 * This handles 'throw' and 'throw' assignment-expression. When
	 * assignment-expression isn't present, Op will be null.
	 */
	CXXThrowExpr

	/** A new expression for memory allocation and constructor calls, e.g:
	 * "new CXXNewExpr(foo)".
	 */
	CXXNewExpr

	/** A delete expression for memory deallocation and destructor calls,
	 * e.g. "delete[] pArray".
	 */
	CXXDeleteExpr

	/** A unary expression. (noexcept, sizeof, or other traits)
	 */
	UnaryExpr

	/** An Objective-C string literal i.e. @"foo".
	 */
	ObjCStringLiteral

	/** An Objective-C \@encode expression.
	 */
	ObjCEncodeExpr

	/** An Objective-C \@selector expression.
	 */
	ObjCSelectorExpr

	/** An Objective-C \@protocol expression.
	 */
	ObjCProtocolExpr

	/** An Objective-C "bridged" cast expression, which casts between
	 * Objective-C pointers and C pointers, transferring ownership in the process.
	 *
	 * \code
	 *   NSString *str = (__bridge_transfer NSString *)CFCreateString();
	 * \endcode
	 */
	ObjCBridgedCastExpr

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
	PackExpansionExpr

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
	SizeOfPackExpr
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
	LambdaExpr

	/** Objective-c Boolean Literal.
	 */
	ObjCBoolLiteralExpr

	/** Represents the "self" expression in an Objective-C method.
	 */
	ObjCSelfExpr

	/** OpenMP 5.0 [2.1.5, Array Section].
	 */
	OMPArraySectionExpr

	/** Represents an @available(...) check.
	 */
	ObjCAvailabilityCheckExpr

	/**
	 * Fixed point literal
	 */
	FixedPointLiteral

	/** OpenMP 5.0 [2.1.4, Array Shaping].
	 */
	OMPArrayShapingExpr

	/**
	 * OpenMP 5.0 [2.1.6 Iterators]
	 */
	OMPIteratorExpr

	/** OpenCL's addrspace_cast<> expression.
	 */
	CXXAddrspaceCastExpr

	/**
	 * Expression that references a C++20 concept.
	 */
	ConceptSpecializationExpr

	/**
	 * Expression that references a C++20 concept.
	 */
	RequiresExpr

	/**
	 * Expression that references a C++20 parenthesized list aggregate
	 * initializer.
	 */
	CXXParenListInitExpr

	LastExpr = CXXParenListInitExpr

	/* Statements */
	FirstStmt = 200
	/**
	 * A statement whose specific kind is not exposed via this
	 * interface.
	 *
	 * Unexposed statements have the same operations as any other kind of
	 * statement; one can extract their location information, spelling,
	 * children, etc. However, the specific kind of the statement is not
	 * reported.
	 */
	UnexposedStmt = iota + 81 //200

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
	LabelStmt

	/** A group of statements like { stmt stmt }.
	 *
	 * This cursor kind is used to describe compound statements, e.g. function
	 * bodies.
	 */
	CompoundStmt

	/** A case statement.
	 */
	CaseStmt

	/** A default statement.
	 */
	DefaultStmt

	/** An if statement
	 */
	IfStmt

	/** A switch statement.
	 */
	SwitchStmt

	/** A while statement.
	 */
	WhileStmt

	/** A do statement.
	 */
	DoStmt

	/** A for statement.
	 */
	ForStmt

	/** A goto statement.
	 */
	GotoStmt

	/** An indirect goto statement.
	 */
	IndirectGotoStmt

	/** A continue statement.
	 */
	ContinueStmt

	/** A break statement.
	 */
	BreakStmt

	/** A return statement.
	 */
	ReturnStmt

	/** A GCC inline assembly statement extension.
	 */
	GCCAsmStmt
	AsmStmt = GCCAsmStmt

	/** Objective-C's overall \@try-\@catch-\@finally statement.
	 */
	ObjCAtTryStmt = iota + 80 //216

	/** Objective-C's \@catch statement.
	 */
	ObjCAtCatchStmt

	/** Objective-C's \@finally statement.
	 */
	ObjCAtFinallyStmt

	/** Objective-C's \@throw statement.
	 */
	ObjCAtThrowStmt

	/** Objective-C's \@synchronized statement.
	 */
	ObjCAtSynchronizedStmt

	/** Objective-C's autorelease pool statement.
	 */
	ObjCAutoreleasePoolStmt

	/** Objective-C's collection statement.
	 */
	ObjCForCollectionStmt

	/** C++'s catch statement.
	 */
	CXXCatchStmt

	/** C++'s try statement.
	 */
	CXXTryStmt

	/** C++'s for (* : *) statement.
	 */
	CXXForRangeStmt

	/** Windows Structured Exception Handling's try statement.
	 */
	SEHTryStmt

	/** Windows Structured Exception Handling's except statement.
	 */
	SEHExceptStmt

	/** Windows Structured Exception Handling's finally statement.
	 */
	SEHFinallyStmt

	/** A MS inline assembly statement extension.
	 */
	MSAsmStmt

	/** The null statement ";": C99 6.8.3p3.
	 *
	 * This cursor kind is used to describe the null statement.
	 */
	NullStmt

	/** Adaptor class for mixing declarations with statements and
	 * expressions.
	 */
	DeclStmt

	/** OpenMP parallel directive.
	 */
	OMPParallelDirective

	/** OpenMP SIMD directive.
	 */
	OMPSimdDirective

	/** OpenMP for directive.
	 */
	OMPForDirective

	/** OpenMP sections directive.
	 */
	OMPSectionsDirective

	/** OpenMP section directive.
	 */
	OMPSectionDirective

	/** OpenMP single directive.
	 */
	OMPSingleDirective

	/** OpenMP parallel for directive.
	 */
	OMPParallelForDirective

	/** OpenMP parallel sections directive.
	 */
	OMPParallelSectionsDirective

	/** OpenMP task directive.
	 */
	OMPTaskDirective

	/** OpenMP master directive.
	 */
	OMPMasterDirective

	/** OpenMP critical directive.
	 */
	OMPCriticalDirective

	/** OpenMP taskyield directive.
	 */
	OMPTaskyieldDirective

	/** OpenMP barrier directive.
	 */
	OMPBarrierDirective

	/** OpenMP taskwait directive.
	 */
	OMPTaskwaitDirective

	/** OpenMP flush directive.
	 */
	OMPFlushDirective

	/** Windows Structured Exception Handling's leave statement.
	 */
	SEHLeaveStmt

	/** OpenMP ordered directive.
	 */
	OMPOrderedDirective

	/** OpenMP atomic directive.
	 */
	OMPAtomicDirective

	/** OpenMP for SIMD directive.
	 */
	OMPForSimdDirective

	/** OpenMP parallel for SIMD directive.
	 */
	OMPParallelForSimdDirective

	/** OpenMP target directive.
	 */
	OMPTargetDirective

	/** OpenMP teams directive.
	 */
	OMPTeamsDirective

	/** OpenMP taskgroup directive.
	 */
	OMPTaskgroupDirective

	/** OpenMP cancellation point directive.
	 */
	OMPCancellationPointDirective

	/** OpenMP cancel directive.
	 */
	OMPCancelDirective

	/** OpenMP target data directive.
	 */
	OMPTargetDataDirective

	/** OpenMP taskloop directive.
	 */
	OMPTaskLoopDirective

	/** OpenMP taskloop simd directive.
	 */
	OMPTaskLoopSimdDirective

	/** OpenMP distribute directive.
	 */
	OMPDistributeDirective

	/** OpenMP target enter data directive.
	 */
	OMPTargetEnterDataDirective

	/** OpenMP target exit data directive.
	 */
	OMPTargetExitDataDirective

	/** OpenMP target parallel directive.
	 */
	OMPTargetParallelDirective

	/** OpenMP target parallel for directive.
	 */
	OMPTargetParallelForDirective

	/** OpenMP target update directive.
	 */
	OMPTargetUpdateDirective

	/** OpenMP distribute parallel for directive.
	 */
	OMPDistributeParallelForDirective

	/** OpenMP distribute parallel for simd directive.
	 */
	OMPDistributeParallelForSimdDirective

	/** OpenMP distribute simd directive.
	 */
	OMPDistributeSimdDirective

	/** OpenMP target parallel for simd directive.
	 */
	OMPTargetParallelForSimdDirective

	/** OpenMP target simd directive.
	 */
	OMPTargetSimdDirective

	/** OpenMP teams distribute directive.
	 */
	OMPTeamsDistributeDirective

	/** OpenMP teams distribute simd directive.
	 */
	OMPTeamsDistributeSimdDirective

	/** OpenMP teams distribute parallel for simd directive.
	 */
	OMPTeamsDistributeParallelForSimdDirective

	/** OpenMP teams distribute parallel for directive.
	 */
	OMPTeamsDistributeParallelForDirective

	/** OpenMP target teams directive.
	 */
	OMPTargetTeamsDirective

	/** OpenMP target teams distribute directive.
	 */
	OMPTargetTeamsDistributeDirective

	/** OpenMP target teams distribute parallel for directive.
	 */
	OMPTargetTeamsDistributeParallelForDirective

	/** OpenMP target teams distribute parallel for simd directive.
	 */
	OMPTargetTeamsDistributeParallelForSimdDirective

	/** OpenMP target teams distribute simd directive.
	 */
	OMPTargetTeamsDistributeSimdDirective

	/** C++2a std::bit_cast expression.
	 */
	BuiltinBitCastExpr

	/** OpenMP master taskloop directive.
	 */
	OMPMasterTaskLoopDirective

	/** OpenMP parallel master taskloop directive.
	 */
	OMPParallelMasterTaskLoopDirective

	/** OpenMP master taskloop simd directive.
	 */
	OMPMasterTaskLoopSimdDirective

	/** OpenMP parallel master taskloop simd directive.
	 */
	OMPParallelMasterTaskLoopSimdDirective

	/** OpenMP parallel master directive.
	 */
	OMPParallelMasterDirective

	/** OpenMP depobj directive.
	 */
	OMPDepobjDirective

	/** OpenMP scan directive.
	 */
	OMPScanDirective

	/** OpenMP tile directive.
	 */
	OMPTileDirective

	/** OpenMP canonical loop.
	 */
	OMPCanonicalLoop

	/** OpenMP interop directive.
	 */
	OMPInteropDirective

	/** OpenMP dispatch directive.
	 */
	OMPDispatchDirective

	/** OpenMP masked directive.
	 */
	OMPMaskedDirective

	/** OpenMP unroll directive.
	 */
	OMPUnrollDirective

	/** OpenMP metadirective directive.
	 */
	OMPMetaDirective

	/** OpenMP loop directive.
	 */
	OMPGenericLoopDirective

	/** OpenMP teams loop directive.
	 */
	OMPTeamsGenericLoopDirective

	/** OpenMP target teams loop directive.
	 */
	OMPTargetTeamsGenericLoopDirective

	/** OpenMP parallel loop directive.
	 */
	OMPParallelGenericLoopDirective

	/** OpenMP target parallel loop directive.
	 */
	OMPTargetParallelGenericLoopDirective

	/** OpenMP parallel masked directive.
	 */
	OMPParallelMaskedDirective

	/** OpenMP masked taskloop directive.
	 */
	OMPMaskedTaskLoopDirective

	/** OpenMP masked taskloop simd directive.
	 */
	OMPMaskedTaskLoopSimdDirective

	/** OpenMP parallel masked taskloop directive.
	 */
	OMPParallelMaskedTaskLoopDirective

	/** OpenMP parallel masked taskloop simd directive.
	 */
	OMPParallelMaskedTaskLoopSimdDirective

	/** OpenMP error directive.
	 */
	OMPErrorDirective

	/** OpenMP scope directive.
	 */
	OMPScopeDirective

	LastStmt = OMPScopeDirective

	/**
	 * Cursor that represents the translation unit itself.
	 *
	 * The translation unit cursor exists primarily to act as the root
	 * cursor for traversing the contents of a translation unit.
	 */
	CursorTranslationUnit = 350

	/* Attributes */
	FirstAttr = 400
	/**
	 * An attribute whose specific kind is not exposed via this
	 * interface.
	 */
	UnexposedAttr = iota + 170

	IBActionAttr
	IBOutletAttr
	IBOutletCollectionAttr
	CXXFinalAttr
	CXXOverrideAttr
	AnnotateAttr
	AsmLabelAttr
	PackedAttr
	PureAttr
	ConstAttr
	NoDuplicateAttr
	CUDAConstantAttr
	CUDADeviceAttr
	CUDAGlobalAttr
	CUDAHostAttr
	CUDASharedAttr
	VisibilityAttr
	DLLExport
	DLLImport
	NSReturnsRetained
	NSReturnsNotRetained
	NSReturnsAutoreleased
	NSConsumesSelf
	NSConsumed
	ObjCException
	ObjCNSObject
	ObjCIndependentClass
	ObjCPreciseLifetime
	ObjCReturnsInnerPointer
	ObjCRequiresSuper
	ObjCRootClass
	ObjCSubclassingRestricted
	ObjCExplicitProtocolImpl
	ObjCDesignatedInitializer
	ObjCRuntimeVisible
	ObjCBoxable
	FlagEnum
	ConvergentAttr
	WarnUnusedAttr
	WarnUnusedResultAttr
	AlignedAttr
	LastAttr = AlignedAttr

	/* Preprocessing */
	PreprocessingDirective = iota + 227 //500
	MacroDefinition
	MacroExpansion
	MacroInstantiation = MacroExpansion
	InclusionDirective = 503
	FirstPreprocessing = PreprocessingDirective
	LastPreprocessing  = InclusionDirective

	/* Extra Declarations */
	/**
	 * A module import declaration.
	 */
	ModuleImportDecl = iota + 320 //600
	TypeAliasTemplateDecl
	/**
	* A static_assert or _Static_assert node
	 */
	StaticAssert
	/**
	* a friend declaration.
	 */
	FriendDecl
	/**
	* a concept declaration.
	 */
	ConceptDecl

	FirstExtraDecl = ModuleImportDecl
	LastExtraDecl  = ConceptDecl

	/**
	* A code completion overload candidate.
	 */
	OverloadCandidate = 700
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

/**
 * The type of an element in the abstract syntax tree.
 *
 */
type Type struct {
	Kind CursorKind
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
 * Retrieve the type of a CXCursor (if any).
 */
// llgo:link (*Cursor).wrapType C.wrap_clang_getCursorType
func (c *Cursor) wrapType(ret *Type) {}

func (c Cursor) Type() (ret Type) {
	c.wrapType(&ret)
	return
}

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

//llgo:link File.FileName C.clang_getFileName
func (File) FileName() (ret String) { return }

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
