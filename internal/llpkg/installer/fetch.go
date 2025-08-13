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

func wrapDownloadError(err error) error {
	if err == nil {
		return nil
	}
	return fmt.Errorf("failed to download llpkg binary files: %w", err)
}

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
		if strings.HasSuffix(file.Name, ".zip") {
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

func DownloadFile(url, outputDir string) (fileName string, err error) {
	// make sure path exists
	if err := os.MkdirAll(outputDir, 0700); err != nil {
		return "", wrapDownloadError(err)
	}
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
