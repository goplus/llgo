package installer

import (
	"archive/zip"
	"fmt"
	"io"
	"mime"
	"net/http"
	"os"
	"path/filepath"
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
			if err := os.MkdirAll(path, 0755); err != nil {
				return err
			}
			return nil
		}
		fs, err := file.Open()
		if err != nil {
			return err
		}
		w, err := os.Create(path)
		if err != nil {
			return err
		}
		defer fs.Close()
		if _, err := io.Copy(w, fs); err != nil {
			w.Close()
			return err
		}
		return w.Close()
	}

	for _, file := range r.File {
		if err = decompress(file); err != nil {
			break
		}
	}
	return err
}

func DownloadFile(url, outputDir string) (absFilename string, err error) {
	// make sure path exists
	if err := os.MkdirAll(outputDir, 0700); err != nil {
		return "", wrapDownloadError(err)
	}
	resp, err := http.Get(url)
	if err != nil {
		return "", wrapDownloadError(err)
	}
	defer resp.Body.Close()

	disposition := resp.Header.Get("Content-Disposition")
	_, params, err := mime.ParseMediaType(disposition)
	if err != nil {
		return "", wrapDownloadError(err)
	}

	fileName, ok := params["filename"]
	if !ok {
		return "", fmt.Errorf("failed to download llpkg binary files: no filename found in Content-Disposition")
	}
	absFilename = filepath.Join(outputDir, fileName)

	out, err := os.Create(absFilename)
	if err != nil {
		return "", wrapDownloadError(err)
	}
	defer out.Close()

	_, err = io.Copy(out, resp.Body)
	return absFilename, wrapDownloadError(err)
}
