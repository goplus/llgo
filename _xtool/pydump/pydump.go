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

package main

import (
	"github.com/goplus/lib/c"
	"github.com/goplus/lib/c/cjson"
	"github.com/goplus/lib/py"
	"github.com/goplus/lib/py/inspect"
)

func main() {
	if c.Argc < 2 {
		c.Fprintf(c.Stderr, c.Str("Usage: pydump <pythonLibPath>\n"))
		return
	}
	pyLib := c.Index(c.Argv, 1)

	py.Initialize()

	root := cjson.Object()
	root.SetItem(c.Str("name"), cjson.String(pyLib))

	items := cjson.Array()
	mod := py.ImportModule(pyLib)
	keys := mod.ModuleGetDict().DictKeys()
	for i, n := 0, keys.ListLen(); i < n; i++ {
		key := keys.ListItem(i)
		val := mod.GetAttr(key)
		doc := val.GetAttrString(c.Str("__doc__"))
		sym := cjson.Object()
		sym.SetItem(c.Str("type"), cjson.String(val.Type().TypeName().CStr()))
		sym.SetItem(c.Str("name"), cjson.String(key.CStr()))
		if doc != nil {
			sym.SetItem(c.Str("doc"), cjson.String(doc.CStr()))
		}
		if val.Callable() != 0 {
			sig := inspect.Signature(val)
			sym.SetItem(c.Str("sig"), cjson.String(sig.Str().CStr()))
		}
		items.AddItem(sym)
	}
	root.SetItem(c.Str("items"), items)

	c.Printf(c.Str("%s\n"), root.CStr())
}
