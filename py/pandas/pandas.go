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

package pandas

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

// https://pandas.pydata.org/docs/reference/index.html

// read_excel(io, sheet_name=0, *, header=0, names=None, index_col=None, usecols=None,
// dtype=None, engine=None, converters=None, true_values=None, false_values=None,
// skiprows=None, nrows=None, na_values=None, keep_default_na=True, na_filter=True,
// verbose=False, parse_dates=False, date_parser=_NoDefault.no_default, date_format=None,
// thousands=None, decimal='.', comment=None, skipfooter=0, storage_options=None,
// dtype_backend=_NoDefault.no_default, engine_kwargs=None)
//
// See https://pandas.pydata.org/docs/reference/api/pandas.read_excel.html
//
//go:linkname ReadExcel py.read_excel
func ReadExcel(io, sheetName *py.Object) *py.Object

// See https://pandas.pydata.org/docs/reference/api/pandas.read_csv.html
//
//go:linkname ReadCsv py.read_csv
func ReadCsv(filepathOrBuffer *py.Object) *py.Object

// eval(expr, parser='pandas', engine=None, local_dict=None, global_dict=None, resolvers=(),
// level=0, target=None, inplace=False)
//
// See https://pandas.pydata.org/docs/reference/api/pandas.eval.html#pandas.eval
//
//go:linkname Eval py.eval
func Eval(expr, parser, engine, localDict, globalDict, resolvers, level, target, inplace *py.Object) *py.Object

// show_versions(as_json=False)
//
// See https://pandas.pydata.org/docs/reference/api/pandas.show_versions.html
//
//go:linkname ShowVersions py.show_versions
func ShowVersions(asJson *py.Object) *py.Object
