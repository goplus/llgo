package unmarshal_test

import (
	"encoding/json"
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
			name: "TypeDecl",
			json: `{
				"_Type":	"TypeDecl",
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
					"Name":	"A"
				},
				"Type":	{
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
								"IsStatic":	false,
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
					"Methods":	[]
				}
			}`,
			expected: &ast.TypeDecl{
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
					Name: "A",
				},
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
					Methods: []*ast.FuncDecl{},
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
