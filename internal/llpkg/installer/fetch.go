package installer

import (
	"archive/zip"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"strings"
)

// wrapDownloadError wraps an error with a descriptive message for download failures.
// It returns nil if the input error is nil, otherwise returns a wrapped error with context.
func wrapDownloadError(err error) error {
	if err == nil {
		return nil
	}
	return fmt.Errorf("failed to download llpkg binary files: %w", err)
}

// Unzip extracts a zip file to the specified output directory.
// It creates the output directory if it doesn't exist, handles nested directories,
// and recursively unzips any nested zip files found within the archive.
func Unzip(zipFilePath, outputDir string) error {
	// make sure path exists
	if err := os.MkdirAll(outputDir, 0700); err != nil {
		return err
	}
	r, err := zip.OpenReader(zipFilePath)
	if err != nil {
		return err
	}
	defer r.Close()
	decompress := func(file *zip.File) error {
		path := filepath.Join(outputDir, file.Name)

		if file.FileInfo().IsDir() {
			return os.MkdirAll(path, 0700)
		}

		fs, err := file.Open()
		if err != nil {
			return err
		}
		defer fs.Close()

		w, err := os.Create(path)
		if err != nil {
			return err
		}
		if _, err := io.Copy(w, fs); err != nil {
			w.Close()
			return err
		}
		if err := w.Close(); err != nil {
			return err
		}
		// if this is a nested zip, unzip it.
		if strings.HasSuffix(path, ".zip") {
			if err := Unzip(path, outputDir); err != nil {
				return err
			}
			os.Remove(path)
		}
		return nil
	}

	for _, file := range r.File {
		if err = decompress(file); err != nil {
			break
		}
	}
	return err
}

// DownloadFile downloads a file from the given URL and saves it to a temporary file.
// It returns the path to the downloaded temporary file.
// The caller is responsible for cleaning up the temporary file when no longer needed.
func DownloadFile(url string) (fileName string, err error) {
	resp, err := http.Get(url)
	if err != nil {
		return "", wrapDownloadError(err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return "", fmt.Errorf("failed to download llpkg binary files: status %s", resp.Status)
	}

	tempFile, err := os.CreateTemp("", "download*.temp")
	if err != nil {
		return "", wrapDownloadError(err)
	}
	defer tempFile.Close()

	_, err = io.Copy(tempFile, resp.Body)

	return tempFile.Name(), wrapDownloadError(err)
}
