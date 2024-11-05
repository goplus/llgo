package unmarshal_test

import (
	"encoding/json"
	"strings"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func TestUnmarshalNode(t *testing.T) {
	testCases := []struct {
		name     string
		json     string
		expected ast.Node
	}{
		{
			name:     "Token",
			json:     `{ "_Type":	"Token","Token":	3,"Lit":	"DEBUG"}`,
			expected: &ast.Token{Token: 3, Lit: "DEBUG"},
		},
		{
			name:     "BuiltinType",
			json:     `{"_Type": "BuiltinType", "Kind": 6, "Flags": 0}`,
			expected: &ast.BuiltinType{Kind: ast.TypeKind(6), Flags: ast.TypeFlag(0)},
		},
		{
			name: "PointerType",
			json: `{
					"_Type":	"PointerType",
					"X":	{
						"_Type":	"BuiltinType",
						"Kind":	2,
						"Flags":	1
					}
				}`,
			expected: &ast.PointerType{
				X: &ast.BuiltinType{
					Kind:  2,
					Flags: 1,
				},
			},
		},
		{
			name: "PointerType",
			json: `{
					"_Type":	"PointerType",
					"X":	{
						"_Type":	"PointerType",
						"X":	{
							"_Type":	"PointerType",
							"X":	{
								"_Type":	"BuiltinType",
								"Kind":	2,
								"Flags":	1
							}
						}
					}
				}`,
			expected: &ast.PointerType{
				X: &ast.PointerType{
					X: &ast.PointerType{
						X: &ast.BuiltinType{
							Kind:  2,
							Flags: 1,
						},
					},
				}},
		},
		{
			name: "ArrayType",
			json: `{
					"_Type":	"ArrayType",
					"Elt":	{
						"_Type":	"BuiltinType",
						"Kind":	2,
						"Flags":	1
					},
					"Len":	null
				}`,
			expected: &ast.ArrayType{
				Elt: &ast.BuiltinType{
					Kind:  2,
					Flags: 1,
				},
				Len: nil,
			},
		},
		{
			name: "ArrayType",
			json: `{
					"_Type":	"ArrayType",
					"Elt":	{
						"_Type":	"BuiltinType",
						"Kind":	2,
						"Flags":	1
					},
					"Len":	{
						"_Type":	"BasicLit",
						"Kind":	0,
						"Value":	"10"
					}
				}`,
			expected: &ast.ArrayType{
				Elt: &ast.BuiltinType{
					Kind:  2,
					Flags: 1,
				},
				Len: &ast.BasicLit{
					Kind:  0,
					Value: "10",
				},
			},
		},
		{
			name: "ArrayType",
			json: `{
					"_Type":	"ArrayType",
					"Elt":	{
						"_Type":	"ArrayType",
						"Elt":	{
							"_Type":	"BuiltinType",
							"Kind":	2,
							"Flags":	1
						},
						"Len":	{
							"_Type":	"BasicLit",
							"Kind":	0,
							"Value":	"4"
						}
					},
					"Len":	{
						"_Type":	"BasicLit",
						"Kind":	0,
						"Value":	"3"
					}
				}`,
			expected: &ast.ArrayType{
				Elt: &ast.ArrayType{
					Elt: &ast.BuiltinType{
						Kind:  2,
						Flags: 1,
					},
					Len: &ast.BasicLit{
						Kind:  0,
						Value: "4",
					},
				},
				Len: &ast.BasicLit{
					Kind:  0,
					Value: "3",
				},
			},
		},
		{
			name:     "Variadic",
			json:     `{"_Type": "Variadic"}`,
			expected: &ast.Variadic{},
		},
		{
			name: "LvalueRefType",
			json: `{
						"_Type":	"LvalueRefType",
						"X":	{
							"_Type":	"BuiltinType",
							"Kind":	6,
							"Flags":	0
						}
					}`,
			expected: &ast.LvalueRefType{
				X: &ast.BuiltinType{
					Kind:  6,
					Flags: 0,
				},
			},
		},
		{
			name: "RvalueRefType",
			json: `{
						"_Type":	"RvalueRefType",
						"X":	{
							"_Type":	"BuiltinType",
							"Kind":	6,
							"Flags":	0
						}
					}`,
			expected: &ast.RvalueRefType{
				X: &ast.BuiltinType{
					Kind:  6,
					Flags: 0,
				},
			},
		},
		{
			name: "Ident",
			json: `{
						"_Type":	"Ident",
						"Name":	"Foo"
					}`,
			expected: &ast.Ident{
				Name: "Foo",
			},
		},
		{
			name: "ScopingExpr",
			json: `{
					"_Type":	"ScopingExpr",
					"X":	{
						"_Type":	"Ident",
						"Name":	"b"
					},
					"Parent":	{
						"_Type":	"Ident",
						"Name":	"a"
					}
				}`,
			expected: &ast.ScopingExpr{
				X: &ast.Ident{
					Name: "b",
				},
				Parent: &ast.Ident{
					Name: "a",
				},
			},
		},
		{
			name: "ScopingExpr",
			json: `{
					"_Type":	"ScopingExpr",
					"X":	{
						"_Type":	"Ident",
						"Name":	"c"
					},
					"Parent":	{
						"_Type":	"ScopingExpr",
						"X":	{
							"_Type":	"Ident",
							"Name":	"b"
						},
						"Parent":	{
							"_Type":	"Ident",
							"Name":	"a"
						}
					}
				}`,
			expected: &ast.ScopingExpr{
				X: &ast.Ident{
					Name: "c",
				},
				Parent: &ast.ScopingExpr{
					X: &ast.Ident{
						Name: "b",
					},
					Parent: &ast.Ident{
						Name: "a",
					},
				},
			},
		},
		{
			name: "TagExpr",
			json: `{
					"_Type":	"TagExpr",
					"Name":	{
						"_Type":	"Ident",
						"Name":	"Foo"
					},
					"Tag":	0
				}`,
			expected: &ast.TagExpr{
				Tag: 0,
				Name: &ast.Ident{
					Name: "Foo",
				},
			},
		},
		{
			name: "Field",
			json: `{
                "_Type": "Field",
                "Type": {"_Type": "Variadic"},
                "Doc": {
					"_Type":	"CommentGroup",
					"List":	[{
							"_Type":	"Comment",
							"Text":	"/// doc"
						}]
				},
                "Comment": null,
                "IsStatic": false,
                "Access": 0,
                	"Names":	[{
						"_Type":	"Ident",
					"Name":	"a"
				}]
            }`,
			expected: &ast.Field{
				Doc: &ast.CommentGroup{
					List: []*ast.Comment{{Text: "/// doc"}},
				},
				Type:     &ast.Variadic{},
				IsStatic: false,
				Access:   ast.AccessSpecifier(0),
				Names:    []*ast.Ident{{Name: "a"}},
			},
		},
		{
			name: "FieldList",
			json: `{
					"_Type":	"FieldList",
					"List":	[{
							"_Type":	"Field",
							"Type":	{
								"_Type":	"BuiltinType",
								"Kind":	6,
								"Flags":	0
							},
							"Doc":	{
								"_Type":	"CommentGroup",
								"List":	[]
							},
							"Comment":	{
								"_Type":	"CommentGroup",
								"List":	[]
							},
							"IsStatic":	false,
							"Access":	1,
							"Names":	[{
									"_Type":	"Ident",
									"Name":	"x"
								}]
						}]
				}`,
			expected: &ast.FieldList{
				List: []*ast.Field{
					{
						Doc: &ast.CommentGroup{
							List: []*ast.Comment{},
						},
						Comment: &ast.CommentGroup{
							List: []*ast.Comment{},
						},
						Type: &ast.BuiltinType{
							Kind:  6,
							Flags: 0,
						},
						Access: ast.AccessSpecifier(1),
						Names:  []*ast.Ident{{Name: "x"}},
					},
				},
			},
		},
		{
			name: "FuncType",
			json: `{
					"_Type":	"FuncType",
					"Params":	{
						"_Type":	"FieldList",
						"List":	[{
								"_Type":	"Field",
								"Type":	{
									"_Type":	"Variadic"
								},
								"Doc":	null,
								"Comment":	null,
								"IsStatic":	false,
								"Access":	0,
								"Names":	[]
							}, {
								"_Type":	"Field",
								"Type":	{
									"_Type":	"BuiltinType",
									"Kind":	6,
									"Flags":	0
								},
								"Doc":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"Comment":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"IsStatic":	false,
								"Access":	0,
								"Names":	[{
										"_Type":	"Ident",
										"Name":	"a"
									}]
							}]
					},
					"Ret":	{
						"_Type":	"BuiltinType",
						"Kind":	0,
						"Flags":	0
					}
				}`,
			expected: &ast.FuncType{
				Params: &ast.FieldList{
					List: []*ast.Field{
						{
							Type:  &ast.Variadic{},
							Names: []*ast.Ident{},
						}, {
							Doc: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
							Comment: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
							Type: &ast.BuiltinType{
								Kind:  6,
								Flags: 0,
							},
							Names: []*ast.Ident{
								{Name: "a"},
							},
						},
					},
				},
				Ret: &ast.BuiltinType{
					Kind:  0,
					Flags: 0,
				},
			},
		},
		{
			name: "FuncDecl",
			json: `{
				"_Type":	"FuncDecl",
				"Loc":	{
					"_Type":	"Location",
					"File":	"temp.h"
				},
				"Doc":	{
					"_Type":	"CommentGroup",
					"List":	[]
				},
				"Parent":	null,
				"Name":	{
					"_Type":	"Ident",
					"Name":	"foo"
				},
				"Type":	{
					"_Type":	"FuncType",
					"Params":	{
						"_Type":	"FieldList",
						"List":	[{
								"_Type":	"Field",
								"Type":	{
									"_Type":	"Variadic"
								},
								"Doc":	null,
								"Comment":	null,
								"IsStatic":	false,
								"Access":	0,
								"Names":	[]
							}, {
								"_Type":	"Field",
								"Type":	{
									"_Type":	"BuiltinType",
									"Kind":	6,
									"Flags":	0
								},
								"Doc":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"Comment":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"IsStatic":	false,
								"Access":	0,
								"Names":	[{
										"_Type":	"Ident",
										"Name":	"a"
									}]
							}]
					},
					"Ret":	{
						"_Type":	"BuiltinType",
						"Kind":	0,
						"Flags":	0
					}
				},
				"IsInline":	false,
				"IsStatic":	false,
				"IsConst":	false,
				"IsExplicit":	false,
				"IsConstructor":	false,
				"IsDestructor":	false,
				"IsVirtual":	false,
				"IsOverride":	false
			}`,
			expected: &ast.FuncDecl{
				DeclBase: ast.DeclBase{
					Loc: &ast.Location{
						File: "temp.h",
					},
					Doc: &ast.CommentGroup{
						List: []*ast.Comment{},
					},
				},
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Type:  &ast.Variadic{},
								Names: []*ast.Ident{},
							}, {
								Doc: &ast.CommentGroup{
									List: []*ast.Comment{},
								},
								Comment: &ast.CommentGroup{
									List: []*ast.Comment{},
								},
								Type: &ast.BuiltinType{
									Kind:  6,
									Flags: 0,
								},
								Names: []*ast.Ident{
									{Name: "a"},
								},
							},
						},
					},
					Ret: &ast.BuiltinType{
						Kind:  0,
						Flags: 0,
					},
				},
			},
		},
		{
			name: "RecordType",
			json: `{
					"_Type":	"RecordType",
					"Tag":	3,
					"Fields":	{
						"_Type":	"FieldList",
						"List":	[{
								"_Type":	"Field",
								"Type":	{
									"_Type":	"BuiltinType",
									"Kind":	6,
									"Flags":	0
								},
								"Doc":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"Comment":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"IsStatic":	true,
								"Access":	1,
								"Names":	[{
										"_Type":	"Ident",
										"Name":	"a"
									}]
							}, {
								"_Type":	"Field",
								"Type":	{
									"_Type":	"BuiltinType",
									"Kind":	6,
									"Flags":	0
								},
								"Doc":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"Comment":	{
									"_Type":	"CommentGroup",
									"List":	[]
								},
								"IsStatic":	false,
								"Access":	1,
								"Names":	[{
										"_Type":	"Ident",
										"Name":	"b"
									}]
							}]
					},
					"Methods":	[{
							"_Type":	"FuncDecl",
							"Loc":	{
								"_Type":	"Location",
								"File":	"temp.h"
							},
							"Doc":	{
								"_Type":	"CommentGroup",
								"List":	[]
							},
							"Parent":	{
								"_Type":	"Ident",
								"Name":	"A"
							},
							"Name":	{
								"_Type":	"Ident",
								"Name":	"foo"
							},
							"Type":	{
								"_Type":	"FuncType",
								"Params":	{
									"_Type":	"FieldList",
									"List":	[{
											"_Type":	"Field",
											"Type":	{
												"_Type":	"BuiltinType",
												"Kind":	6,
												"Flags":	0
											},
											"Doc":	{
												"_Type":	"CommentGroup",
												"List":	[]
											},
											"Comment":	{
												"_Type":	"CommentGroup",
												"List":	[]
											},
											"IsStatic":	false,
											"Access":	0,
											"Names":	[{
													"_Type":	"Ident",
													"Name":	"a"
												}]
										}, {
											"_Type":	"Field",
											"Type":	{
												"_Type":	"BuiltinType",
												"Kind":	8,
												"Flags":	16
											},
											"Doc":	{
												"_Type":	"CommentGroup",
												"List":	[]
											},
											"Comment":	{
												"_Type":	"CommentGroup",
												"List":	[]
											},
											"IsStatic":	false,
											"Access":	0,
											"Names":	[{
													"_Type":	"Ident",
													"Name":	"b"
												}]
										}]
								},
								"Ret":	{
									"_Type":	"BuiltinType",
									"Kind":	8,
									"Flags":	0
								}
							},
							"IsInline":	false,
							"IsStatic":	false,
							"IsConst":	false,
							"IsExplicit":	false,
							"IsConstructor":	false,
							"IsDestructor":	false,
							"IsVirtual":	false,
							"IsOverride":	false
						}]
				}`,
			expected: &ast.RecordType{
				Tag: 3,
				Fields: &ast.FieldList{
					List: []*ast.Field{
						{
							Type: &ast.BuiltinType{
								Kind:  6,
								Flags: 0,
							},
							Doc: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
							Comment: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
							IsStatic: true,
							Access:   1,
							Names: []*ast.Ident{
								{Name: "a"},
							},
						},
						{
							Type: &ast.BuiltinType{
								Kind:  6,
								Flags: 0,
							},
							Doc: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
							Comment: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
							IsStatic: false,
							Access:   1,
							Names: []*ast.Ident{
								{Name: "b"},
							},
						},
					},
				},
				Methods: []*ast.FuncDecl{
					{
						DeclBase: ast.DeclBase{
							Loc: &ast.Location{
								File: "temp.h",
							},
							Doc: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
							Parent: &ast.Ident{Name: "A"},
						},
						Name: &ast.Ident{Name: "foo"},
						Type: &ast.FuncType{
							Params: &ast.FieldList{
								List: []*ast.Field{
									{
										Type: &ast.BuiltinType{
											Kind:  6,
											Flags: 0,
										},
										Doc: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Comment: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										IsStatic: false,
										Access:   0,
										Names: []*ast.Ident{
											{Name: "a"},
										},
									},
									{
										Type: &ast.BuiltinType{
											Kind:  8,
											Flags: 16,
										},
										Doc: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Comment: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										IsStatic: false,
										Access:   0,
										Names: []*ast.Ident{
											{Name: "b"},
										},
									},
								},
							},
							Ret: &ast.BuiltinType{
								Kind:  8,
								Flags: 0,
							},
						},
						IsInline:      false,
						IsStatic:      false,
						IsConst:       false,
						IsExplicit:    false,
						IsConstructor: false,
						IsDestructor:  false,
						IsVirtual:     false,
						IsOverride:    false,
					},
				},
			},
		},
		{
			name: "TypedefDecl",
			json: `{
				"_Type":	"TypedefDecl",
				"Loc":	{
					"_Type":	"Location",
					"File":	"temp.h"
				},
				"Doc":	{
					"_Type":	"CommentGroup",
					"List":	[]
				},
				"Parent":	null,
				"Name":	{
					"_Type":	"Ident",
					"Name":	"INT"
				},
				"Type":	{
					"_Type":	"BuiltinType",
					"Kind":	6,
					"Flags":	0
				}
			}`,
			expected: &ast.TypedefDecl{
				DeclBase: ast.DeclBase{
					Loc: &ast.Location{
						File: "temp.h",
					},
					Doc: &ast.CommentGroup{
						List: []*ast.Comment{},
					},
					Parent: nil,
				},
				Name: &ast.Ident{
					Name: "INT",
				},
				Type: &ast.BuiltinType{
					Kind:  6,
					Flags: 0,
				},
			},
		},
		{
			name: "EnumItem",
			json: `{
						"_Type":	"EnumItem",
						"Name":	{
							"_Type":	"Ident",
							"Name":	"a"
						},
						"Value":	{
							"_Type":	"BasicLit",
							"Kind":	0,
							"Value":	"0"
						}
					}`,
			expected: &ast.EnumItem{
				Name: &ast.Ident{
					Name: "a",
				},
				Value: &ast.BasicLit{
					Kind:  0,
					Value: "0",
				},
			},
		},
		{
			name: "EnumTypeDecl",
			json: `{
				"_Type":	"EnumTypeDecl",
				"Loc":	{
					"_Type":	"Location",
					"File":	"temp.h"
				},
				"Doc":	{
					"_Type":	"CommentGroup",
					"List":	[]
				},
				"Parent":	null,
				"Name":	{
					"_Type":	"Ident",
					"Name":	"Foo"
				},
				"Type":	{
					"_Type":	"EnumType",
					"Items":	[{
							"_Type":	"EnumItem",
							"Name":	{
								"_Type":	"Ident",
								"Name":	"a"
							},
							"Value":	{
								"_Type":	"BasicLit",
								"Kind":	0,
								"Value":	"0"
							}
						}, {
							"_Type":	"EnumItem",
							"Name":	{
								"_Type":	"Ident",
								"Name":	"b"
							},
							"Value":	{
								"_Type":	"BasicLit",
								"Kind":	0,
								"Value":	"1"
							}
						}, {
							"_Type":	"EnumItem",
							"Name":	{
								"_Type":	"Ident",
								"Name":	"c"
							},
							"Value":	{
								"_Type":	"BasicLit",
								"Kind":	0,
								"Value":	"2"
							}
						}]
				}
			}`,
			expected: &ast.EnumTypeDecl{
				DeclBase: ast.DeclBase{
					Loc: &ast.Location{
						File: "temp.h",
					},
					Doc: &ast.CommentGroup{
						List: []*ast.Comment{},
					},
					Parent: nil,
				},
				Name: &ast.Ident{Name: "Foo"},
				Type: &ast.EnumType{
					Items: []*ast.EnumItem{
						{
							Name: &ast.Ident{
								Name: "a",
							},
							Value: &ast.BasicLit{
								Kind:  0,
								Value: "0",
							},
						},
						{
							Name: &ast.Ident{
								Name: "b",
							},
							Value: &ast.BasicLit{
								Kind:  0,
								Value: "1",
							},
						},
						{
							Name: &ast.Ident{
								Name: "c",
							},
							Value: &ast.BasicLit{
								Kind:  0,
								Value: "2",
							},
						},
					},
				},
			},
		},
		{
			name: "Macro",
			json: `{
						"_Type":	"Macro",
						"Name":	"OK",
						"Tokens":	[{
								"_Type":	"Token",
								"Token":	3,
								"Lit":	"OK"
							}, {
								"_Type":	"Token",
								"Token":	4,
								"Lit":	"1"
							}]
					}`,
			expected: &ast.Macro{
				Name: "OK",
				Tokens: []*ast.Token{
					{Token: 3, Lit: "OK"},
					{Token: 4, Lit: "1"},
				},
			},
		},
		{
			name: "Include",
			json: `{
				"_Type":	"Include",
				"Path":	"foo.h"
			}`,
			expected: &ast.Include{
				Path: "foo.h",
			},
		},
		{
			name: "File",
			json: `{
					"_Type":	"File",
					"decls":	[{
									"_Type":	"FuncDecl",
									"Loc":	{
										"_Type":	"Location",
										"File":	"temp.h"
									},
									"Doc":	{
										"_Type":	"CommentGroup",
										"List":	[]
									},
									"Parent":	null,
									"Name":	{
										"_Type":	"Ident",
										"Name":	"foo"
									},
									"Type":	{
										"_Type":	"FuncType",
										"Params":	{
											"_Type":	"FieldList",
											"List":	[{
													"_Type":	"Field",
													"Type":	{
														"_Type":	"Variadic"
													},
													"Doc":	null,
													"Comment":	null,
													"IsStatic":	false,
													"Access":	0,
													"Names":	[]
												}, {
													"_Type":	"Field",
													"Type":	{
														"_Type":	"BuiltinType",
														"Kind":	6,
														"Flags":	0
													},
													"Doc":	{
														"_Type":	"CommentGroup",
														"List":	[]
													},
													"Comment":	{
														"_Type":	"CommentGroup",
														"List":	[]
													},
													"IsStatic":	false,
													"Access":	0,
													"Names":	[{
															"_Type":	"Ident",
															"Name":	"a"
														}]
												}]
										},
										"Ret":	{
											"_Type":	"BuiltinType",
											"Kind":	0,
											"Flags":	0
										}
									},
									"IsInline":	false,
									"IsStatic":	false,
									"IsConst":	false,
									"IsExplicit":	false,
									"IsConstructor":	false,
									"IsDestructor":	false,
									"IsVirtual":	false,
									"IsOverride":	false
								}
					],
					"includes":	[],
					"macros":	[{
							"_Type":	"Macro",
							"Name":	"OK",
							"Tokens":	[{
									"_Type":	"Token",
									"Token":	3,
									"Lit":	"OK"
								}, {
									"_Type":	"Token",
									"Token":	4,
									"Lit":	"1"
								}]
						}]
				}`,
			expected: &ast.File{
				Decls: []ast.Decl{
					&ast.FuncDecl{
						DeclBase: ast.DeclBase{
							Loc: &ast.Location{
								File: "temp.h",
							},
							Doc: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
						},
						Name: &ast.Ident{Name: "foo"},
						Type: &ast.FuncType{
							Params: &ast.FieldList{
								List: []*ast.Field{
									{
										Type:  &ast.Variadic{},
										Names: []*ast.Ident{},
									}, {
										Doc: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Comment: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Type: &ast.BuiltinType{
											Kind:  6,
											Flags: 0,
										},
										Names: []*ast.Ident{
											{Name: "a"},
										},
									},
								},
							},
							Ret: &ast.BuiltinType{
								Kind:  0,
								Flags: 0,
							},
						},
					},
				},
				Includes: []*ast.Include{},
				Macros: []*ast.Macro{
					{
						Name: "OK",
						Tokens: []*ast.Token{
							{Token: 3, Lit: "OK"},
							{Token: 4, Lit: "1"},
						},
					},
				},
			},
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			node, err := unmarshal.UnmarshalNode([]byte(tc.json))
			if err != nil {
				t.Fatalf("UnmarshalNode failed: %v", err)
			}

			resultJSON, err := json.MarshalIndent(node, "", " ")
			if err != nil {
				t.Fatalf("Failed to marshal result to JSON: %v", err)
			}

			expectedJSON, err := json.MarshalIndent(tc.expected, "", " ")

			if err != nil {
				t.Fatalf("Failed to marshal expected result to JSON: %v", err)
			}

			if string(resultJSON) != string(expectedJSON) {
				t.Errorf("JSON mismatch.\nExpected: %s\nGot: %s", string(expectedJSON), string(resultJSON))
			}
		})
	}
}

func TestUnmarshalFileSet(t *testing.T) {
	files := `[
  {
    "path": "/opt/homebrew/Cellar/inih/58/include/INIReader.h",
    "incPath": "INIReader.h",
    "doc": {
      "_Type": "File",
      "decls": [
        {
          "_Type": "TypeDecl",
          "Loc": {
            "_Type": "Location",
            "File": "/opt/homebrew/Cellar/inih/58/include/INIReader.h"
          },
          "Doc": {
            "_Type": "CommentGroup",
            "List": []
          },
          "Parent": null,
          "Name": {
            "_Type": "Ident",
            "Name": "INIReader"
          },
          "Type": {
            "_Type": "RecordType",
            "Tag": 3,
            "Fields": {
              "_Type": "FieldList",
              "List": [
                {
                  "_Type": "Field",
                  "Type": {
                    "_Type": "BuiltinType",
                    "Kind": 6,
                    "Flags": 0
                  },
                  "Doc": {
                    "_Type": "CommentGroup",
                    "List": []
                  },
                  "Comment": {
                    "_Type": "CommentGroup",
                    "List": []
                  },
                  "IsStatic": false,
                  "Access": 3,
                  "Names": [
                    {
                      "_Type": "Ident",
                      "Name": "_error"
                    }
                  ]
                }
              ]
            },
            "Methods": [
              {
                "_Type": "FuncDecl",
                "Loc": {
                  "_Type": "Location",
                  "File": "/opt/homebrew/Cellar/inih/58/include/INIReader.h"
                },
                "Doc": {
                  "_Type": "CommentGroup",
                  "List": []
                },
                "Parent": {
                  "_Type": "Ident",
                  "Name": "INIReader"
                },
                "Name": {
                  "_Type": "Ident",
                  "Name": "INIReader"
                },
                "Type": {
                  "_Type": "FuncType",
                  "Params": {
                    "_Type": "FieldList",
                    "List": [
                      {
                        "_Type": "Field",
                        "Type": {
                          "_Type": "LvalueRefType",
                          "X": {
                            "_Type": "BuiltinType",
                            "Kind": 6,
                            "Flags": 0
                          }
                        },
                        "Doc": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "Comment": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "IsStatic": false,
                        "Access": 0,
                        "Names": [
                          {
                            "_Type": "Ident",
                            "Name": "filename"
                          }
                        ]
                      }
                    ]
                  },
                  "Ret": {
                    "_Type": "BuiltinType",
                    "Kind": 0,
                    "Flags": 0
                  }
                },
                "IsInline": false,
                "IsStatic": false,
                "IsConst": false,
                "IsExplicit": true,
                "IsConstructor": true,
                "IsDestructor": false,
                "IsVirtual": false,
                "IsOverride": false
              },
              {
                "_Type": "FuncDecl",
                "Loc": {
                  "_Type": "Location",
                  "File": "/opt/homebrew/Cellar/inih/58/include/INIReader.h"
                },
                "Doc": {
                  "_Type": "CommentGroup",
                  "List": []
                },
                "Parent": {
                  "_Type": "Ident",
                  "Name": "INIReader"
                },
                "Name": {
                  "_Type": "Ident",
                  "Name": "HasSection"
                },
                "Type": {
                  "_Type": "FuncType",
                  "Params": {
                    "_Type": "FieldList",
                    "List": [
                      {
                        "_Type": "Field",
                        "Type": {
                          "_Type": "LvalueRefType",
                          "X": {
                            "_Type": "BuiltinType",
                            "Kind": 6,
                            "Flags": 0
                          }
                        },
                        "Doc": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "Comment": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "IsStatic": false,
                        "Access": 0,
                        "Names": [
                          {
                            "_Type": "Ident",
                            "Name": "section"
                          }
                        ]
                      }
                    ]
                  },
                  "Ret": {
                    "_Type": "BuiltinType",
                    "Kind": 1,
                    "Flags": 0
                  }
                },
                "IsInline": false,
                "IsStatic": false,
                "IsConst": true,
                "IsExplicit": false,
                "IsConstructor": false,
                "IsDestructor": false,
                "IsVirtual": false,
                "IsOverride": false
              },
              {
                "_Type": "FuncDecl",
                "Loc": {
                  "_Type": "Location",
                  "File": "/opt/homebrew/Cellar/inih/58/include/INIReader.h"
                },
                "Doc": {
                  "_Type": "CommentGroup",
                  "List": []
                },
                "Parent": {
                  "_Type": "Ident",
                  "Name": "INIReader"
                },
                "Name": {
                  "_Type": "Ident",
                  "Name": "HasValue"
                },
                "Type": {
                  "_Type": "FuncType",
                  "Params": {
                    "_Type": "FieldList",
                    "List": [
                      {
                        "_Type": "Field",
                        "Type": {
                          "_Type": "LvalueRefType",
                          "X": {
                            "_Type": "BuiltinType",
                            "Kind": 6,
                            "Flags": 0
                          }
                        },
                        "Doc": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "Comment": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "IsStatic": false,
                        "Access": 0,
                        "Names": [
                          {
                            "_Type": "Ident",
                            "Name": "section"
                          }
                        ]
                      },
                      {
                        "_Type": "Field",
                        "Type": {
                          "_Type": "LvalueRefType",
                          "X": {
                            "_Type": "BuiltinType",
                            "Kind": 6,
                            "Flags": 0
                          }
                        },
                        "Doc": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "Comment": {
                          "_Type": "CommentGroup",
                          "List": []
                        },
                        "IsStatic": false,
                        "Access": 0,
                        "Names": [
                          {
                            "_Type": "Ident",
                            "Name": "name"
                          }
                        ]
                      }
                    ]
                  },
                  "Ret": {
                    "_Type": "BuiltinType",
                    "Kind": 1,
                    "Flags": 0
                  }
                },
                "IsInline": false,
                "IsStatic": false,
                "IsConst": true,
                "IsExplicit": false,
                "IsConstructor": false,
                "IsDestructor": false,
                "IsVirtual": false,
                "IsOverride": false
              }
            ]
          }
        }
      ],
      "includes": [
        {
          "_Type": "Include",
          "Path": "string"
        }
      ],
      "macros": [
        {
          "_Type": "Macro",
          "Name": "INIREADER_H",
          "Tokens": [
            {
              "_Type": "Token",
              "Token": 3,
              "Lit": "INIREADER_H"
            }
          ]
        },
        {
          "_Type": "Macro",
          "Name": "INI_API",
          "Tokens": [
            {
              "_Type": "Token",
              "Token": 3,
              "Lit": "INI_API"
            },
            {
              "_Type": "Token",
              "Token": 2,
              "Lit": "__attribute__"
            },
            {
              "_Type": "Token",
              "Token": 1,
              "Lit": "("
            },
            {
              "_Type": "Token",
              "Token": 1,
              "Lit": "("
            },
            {
              "_Type": "Token",
              "Token": 3,
              "Lit": "visibility"
            },
            {
              "_Type": "Token",
              "Token": 1,
              "Lit": "("
            },
            {
              "_Type": "Token",
              "Token": 4,
              "Lit": "\"default\""
            },
            {
              "_Type": "Token",
              "Token": 1,
              "Lit": ")"
            },
            {
              "_Type": "Token",
              "Token": 1,
              "Lit": ")"
            },
            {
              "_Type": "Token",
              "Token": 1,
              "Lit": ")"
            }
          ]
        }
      ]
    }
  }
]`

	expected := []struct {
		Path    string
		IncPath string
		Doc     *ast.File
	}{
		{
			Path:    "/opt/homebrew/Cellar/inih/58/include/INIReader.h",
			IncPath: "INIReader.h",
			Doc: &ast.File{
				Decls: []ast.Decl{
					&ast.TypeDecl{
						DeclBase: ast.DeclBase{
							Loc: &ast.Location{
								File: "/opt/homebrew/Cellar/inih/58/include/INIReader.h",
							},
							Doc: &ast.CommentGroup{
								List: []*ast.Comment{},
							},
						},
						Name: &ast.Ident{Name: "INIReader"},
						Type: &ast.RecordType{
							Tag: 3,
							Fields: &ast.FieldList{
								List: []*ast.Field{
									{
										Type: &ast.BuiltinType{
											Kind:  6,
											Flags: 0,
										},
										Doc: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Comment: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										IsStatic: false,
										Access:   3,
										Names: []*ast.Ident{
											{Name: "_error"},
										},
									},
								},
							},
							Methods: []*ast.FuncDecl{
								{
									DeclBase: ast.DeclBase{
										Loc: &ast.Location{
											File: "/opt/homebrew/Cellar/inih/58/include/INIReader.h",
										},
										Doc: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Parent: &ast.Ident{Name: "INIReader"},
									},
									Name: &ast.Ident{Name: "INIReader"},
									Type: &ast.FuncType{
										Params: &ast.FieldList{
											List: []*ast.Field{
												{
													Type: &ast.LvalueRefType{
														X: &ast.BuiltinType{
															Kind:  6,
															Flags: 0,
														},
													},
													Doc: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Comment: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Names: []*ast.Ident{
														{Name: "filename"},
													},
												},
											},
										},
										Ret: &ast.BuiltinType{
											Kind:  0,
											Flags: 0,
										},
									},
									IsExplicit:    true,
									IsConstructor: true,
								},
								{
									DeclBase: ast.DeclBase{
										Loc: &ast.Location{
											File: "/opt/homebrew/Cellar/inih/58/include/INIReader.h",
										},
										Doc: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Parent: &ast.Ident{Name: "INIReader"},
									},
									Name: &ast.Ident{Name: "HasSection"},
									Type: &ast.FuncType{
										Params: &ast.FieldList{
											List: []*ast.Field{
												{
													Type: &ast.LvalueRefType{
														X: &ast.BuiltinType{
															Kind:  6,
															Flags: 0,
														},
													},
													Doc: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Comment: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Names: []*ast.Ident{
														{Name: "section"},
													},
												},
											},
										},
										Ret: &ast.BuiltinType{
											Kind:  1,
											Flags: 0,
										},
									},
									IsConst: true,
								},
								{
									DeclBase: ast.DeclBase{
										Loc: &ast.Location{
											File: "/opt/homebrew/Cellar/inih/58/include/INIReader.h",
										},
										Doc: &ast.CommentGroup{
											List: []*ast.Comment{},
										},
										Parent: &ast.Ident{Name: "INIReader"},
									},
									Name: &ast.Ident{Name: "HasValue"},
									Type: &ast.FuncType{
										Params: &ast.FieldList{
											List: []*ast.Field{
												{
													Type: &ast.LvalueRefType{
														X: &ast.BuiltinType{
															Kind:  6,
															Flags: 0,
														},
													},
													Doc: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Comment: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Names: []*ast.Ident{
														{Name: "section"},
													},
												},
												{
													Type: &ast.LvalueRefType{
														X: &ast.BuiltinType{
															Kind:  6,
															Flags: 0,
														},
													},
													Doc: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Comment: &ast.CommentGroup{
														List: []*ast.Comment{},
													},
													Names: []*ast.Ident{
														{Name: "name"},
													},
												},
											},
										},
										Ret: &ast.BuiltinType{
											Kind:  1,
											Flags: 0,
										},
									},
									IsConst: true,
								},
							},
						},
					},
				},
				Includes: []*ast.Include{
					{
						Path: "string",
					},
				},
				Macros: []*ast.Macro{
					{
						Name: "INIREADER_H",
						Tokens: []*ast.Token{
							{Token: 3, Lit: "INIREADER_H"},
						},
					},
					{
						Name: "INI_API",
						Tokens: []*ast.Token{
							{Token: 3, Lit: "INI_API"},
							{Token: 2, Lit: "__attribute__"},
							{Token: 1, Lit: "("},
							{Token: 1, Lit: "("},
							{Token: 3, Lit: "visibility"},
							{Token: 1, Lit: "("},
							{Token: 4, Lit: "\"default\""},
							{Token: 1, Lit: ")"},
							{Token: 1, Lit: ")"},
							{Token: 1, Lit: ")"},
						},
					},
				},
			},
		},
	}

	fileSet, err := unmarshal.UnmarshalFileSet([]byte(files))

	if err != nil {
		t.Fatalf("UnmarshalNode failed: %v", err)
	}

	resultJSON, err := json.MarshalIndent(fileSet, "", " ")
	if err != nil {
		t.Fatalf("Failed to marshal result to JSON: %v", err)
	}

	expectedJSON, err := json.MarshalIndent(expected, "", " ")

	if err != nil {
		t.Fatalf("Failed to marshal expected result to JSON: %v", err)
	}

	if string(resultJSON) != string(expectedJSON) {
		t.Errorf("JSON mismatch.\nExpected: %s\nGot: %s", string(expectedJSON), string(resultJSON))
	}
}

func TestUnmarshalErrors(t *testing.T) {
	testCases := []struct {
		name        string
		fn          func([]byte) (ast.Node, error)
		input       string
		expectedErr string
	}{
		// UnmarshalNode errors
		{
			name:        "UnmarshalNode - Invalid JSON",
			fn:          unmarshal.UnmarshalNode,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling node type",
		},
		{
			name:        "UnmarshalNode - Unknown type",
			fn:          unmarshal.UnmarshalNode,
			input:       `{"_Type": "UnknownType"}`,
			expectedErr: "unknown node type: UnknownType",
		},

		// unmarshalToken errors
		{
			name:        "unmarshalToken - Invalid JSON",
			fn:          unmarshal.UnmarshalToken,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling Token",
		},

		// unmarshalMacro errors
		{
			name:        "unmarshalMacro - Invalid JSON",
			fn:          unmarshal.UnmarshalMacro,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling Macro",
		},

		// unmarshalInclude errors
		{
			name:        "unmarshalInclude - Invalid JSON",
			fn:          unmarshal.UnmarshalInclude,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling Include",
		},

		// unmarshalBasicLit errors
		{
			name:        "unmarshalBasicLit - Invalid JSON",
			fn:          unmarshal.UnmarshalBasicLit,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling BasicLit",
		},

		// unmarshalBuiltinType errors
		{
			name:        "unmarshalBuiltinType - Invalid JSON",
			fn:          unmarshal.UnmarshalBuiltinType,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling BuiltinType",
		},

		// unmarshalIdent errors
		{
			name:        "unmarshalIdent - Invalid JSON",
			fn:          unmarshal.UnmarshalIdent,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling Ident",
		},

		// unmarshalVariadic errors
		{
			name:        "unmarshalVariadic - Invalid JSON",
			fn:          unmarshal.UnmarshalVariadic,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling Variadic",
		},

		// unmarshalXType errors
		{
			name:        "unmarshalXType - Invalid JSON",
			fn:          unmarshal.UnmarshalPointerType,
			input:       `{"invalid": "json"`,
			expectedErr: "unmarshalling XType",
		},
		{
			name:        "unmarshalXType - Invalid X field",
			fn:          unmarshal.UnmarshalPointerType,
			input:       `{"X": {"_Type": "InvalidType"}}`,
			expectedErr: "unmarshalling field X",
		},
		{
			name: "unmarshalXType - Unexpected type",
			fn: func(data []byte) (ast.Node, error) {
				return unmarshal.UnmarshalXType(data, &ast.BasicLit{})
			},
			input:       `{"X": {"_Type": "Ident", "Name": "test"}}`,
			expectedErr: "unexpected type: *ast.BasicLit",
		},

		// unmarshalArrayType errors
		{
			name:        "unmarshalArrayType - Invalid JSON",
			fn:          unmarshal.UnmarshalArrayType,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling ArrayType",
		},
		{
			name:        "unmarshalArrayType - Invalid Elt",
			fn:          unmarshal.UnmarshalArrayType,
			input:       `{"Elt": {"_Type": "InvalidType"}, "Len": null}`,
			expectedErr: "error unmarshalling array Elt",
		},
		{
			name:        "unmarshalArrayType - Invalid Len",
			fn:          unmarshal.UnmarshalArrayType,
			input:       `{"Elt": {"_Type": "BuiltinType", "Kind": 1}, "Len": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling array Len",
		},

		// unmarshalField errors
		{
			name:        "unmarshalField - Invalid JSON",
			fn:          unmarshal.UnmarshalField,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling Field",
		},
		{
			name:        "unmarshalField - Invalid Type",
			fn:          unmarshal.UnmarshalField,
			input:       `{"Type": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling field Type",
		},

		// unmarshalFieldList errors
		{
			name:        "unmarshalFieldList - Invalid JSON",
			fn:          unmarshal.UnmarshalFieldList,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling FieldList",
		},
		{
			name:        "unmarshalFieldList - Invalid field",
			fn:          unmarshal.UnmarshalFieldList,
			input:       `{"List": [{"_Type": "InvalidType"}]}`,
			expectedErr: "error unmarshalling field in FieldList",
		},
		{
			name:        "unmarshalTagExpr - Invalid JSON",
			fn:          unmarshal.UnmarshalTagExpr,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling TagExpr",
		},
		{
			name:        "unmarshalTagExpr - Invalid Name",
			fn:          unmarshal.UnmarshalTagExpr,
			input:       `{"Name": {"_Type": "InvalidType"}, "Tag": 0}`,
			expectedErr: "error unmarshalling TagExpr Name",
		},

		// unmarshalScopingExpr errors
		{
			name:        "unmarshalScopingExpr - Invalid JSON",
			fn:          unmarshal.UnmarshalScopingExpr,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling ScopingExpr",
		},
		{
			name:        "unmarshalScopingExpr - Invalid Parent",
			fn:          unmarshal.UnmarshalScopingExpr,
			input:       `{"Parent": {"_Type": "InvalidType"}, "X": {"_Type": "Ident", "Name": "test"}}`,
			expectedErr: "unknown node type: InvalidType",
		},
		{
			name:        "unmarshalScopingExpr - Invalid X",
			fn:          unmarshal.UnmarshalScopingExpr,
			input:       `{"Parent": {"_Type": "Ident", "Name": "test"}, "X": {"_Type": "InvalidType"}}`,
			expectedErr: "unknown node type: InvalidType",
		},

		// unmarshalEnumItem errors
		{
			name:        "unmarshalEnumItem - Invalid JSON",
			fn:          unmarshal.UnmarshalEnumItem,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling EnumItem",
		},
		{
			name:        "unmarshalEnumItem - Invalid Value",
			fn:          unmarshal.UnmarshalEnumItem,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Value": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling EnumItem Value",
		},

		// unmarshalEnumType errors
		{
			name:        "unmarshalEnumType - Invalid JSON",
			fn:          unmarshal.UnmarshalEnumType,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling EnumType",
		},
		{
			name:        "unmarshalEnumType - Invalid Item",
			fn:          unmarshal.UnmarshalEnumType,
			input:       `{"Items": [{"_Type": "InvalidType"}]}`,
			expectedErr: "error unmarshalling EnumType Item",
		},

		// unmarshalRecordType errors
		{
			name:        "unmarshalRecordType - Invalid JSON",
			fn:          unmarshal.UnmarshalRecordType,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling RecordType",
		},
		{
			name:        "unmarshalRecordType - Invalid Fields",
			fn:          unmarshal.UnmarshalRecordType,
			input:       `{"Tag": 0, "Fields": {"_Type": "InvalidType"}, "Methods": []}`,
			expectedErr: "error unmarshalling Fields in RecordType",
		},
		{
			name:        "unmarshalRecordType - Invalid Method",
			fn:          unmarshal.UnmarshalRecordType,
			input:       `{"Tag": 0, "Fields": {"_Type": "FieldList", "List": []}, "Methods": [{"_Type": "InvalidType"}]}`,
			expectedErr: "error unmarshalling method in RecordType",
		},

		// unmarshalFuncType errors
		{
			name:        "unmarshalFuncType - Invalid JSON",
			fn:          unmarshal.UnmarshalFuncType,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling FuncType",
		},
		{
			name:        "unmarshalFuncType - Invalid Params",
			fn:          unmarshal.UnmarshalFuncType,
			input:       `{"Params": {"_Type": "InvalidType"}, "Ret": {"_Type": "BuiltinType", "Kind": 1}}`,
			expectedErr: "error unmarshalling Params in FuncType",
		},
		{
			name:        "unmarshalFuncType - Invalid Ret",
			fn:          unmarshal.UnmarshalFuncType,
			input:       `{"Params": {"_Type": "FieldList", "List": []}, "Ret": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling Ret in FuncType",
		},

		// unmarshalFuncDecl errors
		{
			name:        "unmarshalFuncDecl - Invalid JSON",
			fn:          unmarshal.UnmarshalFuncDecl,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling FuncDecl",
		},
		{
			name:        "unmarshalFuncDecl - Invalid Type",
			fn:          unmarshal.UnmarshalFuncDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling FuncDecl Type",
		},
		{
			name:        "unmarshalFuncDecl - Invalid DeclBase",
			fn:          unmarshal.UnmarshalFuncDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "FuncType", "Params": {"_Type": "FieldList", "List": []}, "Ret": {"_Type": "BuiltinType", "Kind": 1}}, "Loc": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling FuncDecl DeclBase: error unmarshalling parent in DeclBase Type",
		},
		{
			name:        "unmarshalFuncDecl - Invalid DeclBase",
			fn:          unmarshal.UnmarshalFuncDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"},"Loc":false, "Type": {"_Type": "FuncType", "Params": {"_Type": "FieldList", "List": []}, "Ret": {"_Type": "BuiltinType", "Kind": 1}}, "Loc": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling DeclBase Type",
		},
		// unmarshalTypeDecl errors
		{
			name:        "unmarshalTypeDecl - Invalid JSON",
			fn:          unmarshal.UnmarshalTypeDecl,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling TypeDecl",
		},
		{
			name:        "unmarshalTypeDecl - Invalid Type",
			fn:          unmarshal.UnmarshalTypeDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling TypeDecl Type",
		},
		{
			name:        "unmarshalTypeDecl - Invalid DeclBase",
			fn:          unmarshal.UnmarshalTypeDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "BuiltinType", "Kind": 1}, "Loc": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling TypeDecl DeclBase",
		},
		// unmarshalTypeDefDecl errors
		{
			name:        "unmarshalTypeDefDecl - Invalid JSON",
			fn:          unmarshal.UnmarshalTypeDefDecl,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling TypeDefDecl",
		},
		{
			name:        "unmarshalTypeDefDecl - Invalid Type",
			fn:          unmarshal.UnmarshalTypeDefDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling TypeDefDecl Type",
		},
		{
			name:        "unmarshalTypeDefDecl - Invalid DeclBase",
			fn:          unmarshal.UnmarshalTypeDefDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "BuiltinType", "Kind": 1}, "Loc": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling TypeDefDecl DeclBase",
		},
		// unmarshalEnumTypeDecl errors
		{
			name:        "unmarshalEnumTypeDecl - Invalid JSON",
			fn:          unmarshal.UnmarshalEnumTypeDecl,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling EnumTypeDecl",
		},
		{
			name:        "unmarshalEnumTypeDecl - Invalid Type",
			fn:          unmarshal.UnmarshalEnumTypeDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling EnumTypeDecl Type",
		},
		{
			name:        "unmarshalEnumTypeDecl - Invalid DeclBase",
			fn:          unmarshal.UnmarshalEnumTypeDecl,
			input:       `{"Name": {"_Type": "Ident", "Name": "test"}, "Type": {"_Type": "EnumType", "Items": []}, "Loc": {"_Type": "InvalidType"}}`,
			expectedErr: "error unmarshalling EnumTypeDecl DeclBase",
		},

		// unmarshalFile errors
		{
			name:        "unmarshalFile - Invalid JSON",
			fn:          unmarshal.UnmarshalFile,
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling File",
		},
		{
			name:        "unmarshalFile - Invalid Decl",
			fn:          unmarshal.UnmarshalFile,
			input:       `{"decls": [{"_Type": "InvalidType"}], "includes": [], "macros": []}`,
			expectedErr: "error unmarshalling 0 Decl in File",
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			_, err := tc.fn([]byte(tc.input))
			if err == nil {
				t.Errorf("Expected error, but got nil")
			} else if !strings.Contains(err.Error(), tc.expectedErr) {
				t.Errorf("Expected error containing %q, but got %q", tc.expectedErr, err.Error())
			}
		})
	}
}

func TestUnmarshalFileSetErrors(t *testing.T) {
	testCases := []struct {
		name        string
		input       string
		expectedErr string
	}{
		{
			name:        "Invalid JSON",
			input:       `{"invalid": "json"`,
			expectedErr: "error unmarshalling FilesWithPath",
		},
		{
			name:        "Invalid doc",
			input:       `[{"path": "test.cpp", "doc": {"_Type": "InvalidType"}}]`,
			expectedErr: "error unmarshalling doc for path test.cpp",
		},
		{
			name:        "Doc not *ast.File",
			input:       `[{"path": "test.cpp", "doc": {"_Type": "Token", "Token": 1, "Lit": "test"}}]`,
			expectedErr: "doc is not of type *ast.File for path test.cpp",
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			_, err := unmarshal.UnmarshalFileSet([]byte(tc.input))
			if tc.expectedErr == "" {
				if err != nil {
					t.Errorf("Expected no error, but got: %v", err)
				}
			} else {
				if err == nil {
					t.Errorf("Expected error containing %q, but got nil", tc.expectedErr)
				} else if !strings.Contains(err.Error(), tc.expectedErr) {
					t.Errorf("Expected error containing %q, but got: %v", tc.expectedErr, err)
				}
			}
		})
	}
}
