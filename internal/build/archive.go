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
	"fmt"
	"io"
	"os"
	"path/filepath"
	"time"

	"github.com/goplus/llgo/xtool/ar"
)

// CreateArchive creates an ar archive from the given object files.
func CreateArchive(archivePath string, objectFiles []string) error {
	if len(objectFiles) == 0 {
		// Create empty archive
		f, err := os.Create(archivePath)
		if err != nil {
			return err
		}
		w := ar.NewWriter(f)
		if err := w.WriteGlobalHeader(); err != nil {
			f.Close()
			return err
		}
		return f.Close()
	}

	// Create archive file
	f, err := os.Create(archivePath)
	if err != nil {
		return err
	}
	defer f.Close()

	w := ar.NewWriter(f)
	if err := w.WriteGlobalHeader(); err != nil {
		return err
	}

	// Use short sequential names to avoid ar format's 16-char filename limit
	for i, objPath := range objectFiles {
		ext := filepath.Ext(objPath)
		name := fmt.Sprintf("%d%s", i, ext)
		if err := addFileToArchive(w, objPath, name); err != nil {
			return err
		}
	}

	return nil
}

func addFileToArchive(w *ar.Writer, filePath string, name string) error {
	info, err := os.Stat(filePath)
	if err != nil {
		return err
	}

	content, err := os.ReadFile(filePath)
	if err != nil {
		return err
	}

	hdr := &ar.Header{
		Name:    name,
		ModTime: info.ModTime(),
		Mode:    0644,
		Size:    info.Size(),
	}

	if err := w.WriteHeader(hdr); err != nil {
		return err
	}

	_, err = w.Write(content)
	return err
}

// ExtractArchive extracts all files from an ar archive to the destination directory.
// Returns the list of extracted file paths.
func ExtractArchive(archivePath, destDir string) ([]string, error) {
	f, err := os.Open(archivePath)
	if err != nil {
		return nil, err
	}
	defer f.Close()

	r, err := ar.NewReader(f)
	if err != nil {
		return nil, err
	}

	if err := os.MkdirAll(destDir, 0755); err != nil {
		return nil, err
	}

	var extractedFiles []string

	for {
		hdr, err := r.Next()
		if err == io.EOF {
			break
		}
		if err != nil {
			return nil, err
		}

		// Skip symbol table entries
		if hdr.Name == "/" || hdr.Name == "//" {
			continue
		}

		destPath := filepath.Join(destDir, hdr.Name)
		extractedFiles = append(extractedFiles, destPath)

		outFile, err := os.Create(destPath)
		if err != nil {
			return nil, err
		}

		if _, err := io.Copy(outFile, r); err != nil {
			outFile.Close()
			return nil, err
		}

		if err := outFile.Close(); err != nil {
			return nil, err
		}
	}

	return extractedFiles, nil
}

// ArchiveMetadata holds metadata about a cached archive.
type CacheArchiveMetadata struct {
	Files      []string  // List of files in the archive
	LinkArgs   []string  // Link arguments for this package
	NeedRt     bool      // Whether this package needs runtime
	NeedPyInit bool      // Whether this package needs Python init
	CreatedAt  time.Time // When the cache was created
}
