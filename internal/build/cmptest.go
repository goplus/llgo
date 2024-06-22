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

package build

import (
	"bytes"
	"errors"
	"fmt"
	"io"
	"log"
	"os"
	"os/exec"
)

func cmpTest(dir, pkgPath, llApp string, runArgs []string) {
	var goOut, goErr bytes.Buffer
	var llgoOut, llgoErr bytes.Buffer
	var llgoRunErr = runApp(runArgs, dir, &llgoOut, &llgoErr, llApp)
	var goRunErr = runApp(runArgs, dir, &goOut, &goErr, "go", "run", pkgPath)
	checkEqual("output", llgoOut.Bytes(), goOut.Bytes())
	checkEqual("stderr", llgoErr.Bytes(), goErr.Bytes())
	checkEqualRunErr(llgoRunErr, goRunErr)
}

func checkEqualRunErr(llgoRunErr, goRunErr error) {
	if llgoRunErr == goRunErr {
		return
	}
	fmt.Fprintln(os.Stderr, "=> Exit:", llgoRunErr)
	fmt.Fprintln(os.Stderr, "\n=> Expected Exit:", goRunErr)
}

func checkEqual(prompt string, a, expected []byte) {
	if bytes.Equal(a, expected) {
		return
	}

	fmt.Fprintln(os.Stderr, "=> Result of", prompt)
	os.Stderr.Write(a)

	fmt.Fprintln(os.Stderr, "\n=> Expected", prompt)
	os.Stderr.Write(expected)

	fatal(errors.New("checkEqual: unexpected " + prompt))
}

func runApp(runArgs []string, dir string, stdout, stderr io.Writer, app string, args ...string) error {
	if len(runArgs) > 0 {
		if len(args) > 0 {
			args = append(args, runArgs...)
		} else {
			args = runArgs
		}
	}
	cmd := exec.Command(app, args...)
	cmd.Dir = dir
	cmd.Stdout = stdout
	cmd.Stderr = stderr
	return cmd.Run()
}

func fatal(err error) {
	log.Panicln(err)
}
