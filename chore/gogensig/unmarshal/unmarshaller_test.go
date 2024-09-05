package unmarshal_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

var files string = `[
  {
    "path": "/opt/homebrew/Cellar/inih/58/include/INIReader.h",
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

func TestUnmarshalFiles(t *testing.T) {
	docVisitors := []visitor.DocVisitor{&visitor.AstConvert{}, &visitor.AstPrint{}}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	p.Unmarshal([]byte(files))
}
