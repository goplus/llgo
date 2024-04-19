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

package ar

import (
	"io"
	"strconv"
	"time"
)

// Provides read access to an ar archive.
// Call next to skip files
//
// Example:
//	reader := NewReader(f)
//	var buf bytes.Buffer
//	for {
//		_, err := reader.Next()
//		if err == io.EOF {
//			break
//		}
//		if err != nil {
//			t.Errorf(err.Error())
//		}
//		io.Copy(&buf, reader)
//	}

type Reader struct {
	r   io.Reader
	nb  int64
	pad int64
}

// Copies read data to r. Strips the global ar header.
func NewReader(r io.Reader) *Reader {
	io.CopyN(io.Discard, r, 8) // Discard global header

	return &Reader{r: r}
}

func (rd *Reader) string(b []byte) string {
	i := len(b) - 1
	for i > 0 && b[i] == 32 {
		i--
	}

	return string(b[0 : i+1])
}

func (rd *Reader) numeric(b []byte) int64 {
	i := len(b) - 1
	for i > 0 && b[i] == 32 {
		i--
	}

	n, _ := strconv.ParseInt(string(b[0:i+1]), 10, 64)

	return n
}

func (rd *Reader) octal(b []byte) int64 {
	i := len(b) - 1
	for i > 0 && b[i] == 32 {
		i--
	}

	n, _ := strconv.ParseInt(string(b[3:i+1]), 8, 64)

	return n
}

func (rd *Reader) skipUnread() error {
	skip := rd.nb + rd.pad
	rd.nb, rd.pad = 0, 0
	if seeker, ok := rd.r.(io.Seeker); ok {
		_, err := seeker.Seek(skip, io.SeekCurrent)
		return err
	}

	_, err := io.CopyN(io.Discard, rd.r, skip)
	return err
}

func (rd *Reader) readHeader() (*Header, error) {
	headerBuf := make([]byte, headerByteSize)
	if _, err := io.ReadFull(rd.r, headerBuf); err != nil {
		return nil, err
	}

	header := new(Header)
	s := slicer(headerBuf)

	header.Name = rd.string(s.next(16))
	header.ModTime = time.Unix(rd.numeric(s.next(12)), 0)
	header.Uid = int(rd.numeric(s.next(6)))
	header.Gid = int(rd.numeric(s.next(6)))
	header.Mode = rd.octal(s.next(8))
	header.Size = rd.numeric(s.next(10))

	rd.nb = int64(header.Size)
	if header.Size%2 == 1 {
		rd.pad = 1
	} else {
		rd.pad = 0
	}

	return header, nil
}

// Call Next() to skip to the next file in the archive file.
// Returns a Header which contains the metadata about the
// file in the archive.
func (rd *Reader) Next() (*Header, error) {
	err := rd.skipUnread()
	if err != nil {
		return nil, err
	}

	return rd.readHeader()
}

// Read data from the current entry in the archive.
func (rd *Reader) Read(b []byte) (n int, err error) {
	if rd.nb == 0 {
		return 0, io.EOF
	}
	if int64(len(b)) > rd.nb {
		b = b[0:rd.nb]
	}
	n, err = rd.r.Read(b)
	rd.nb -= int64(n)

	return
}
