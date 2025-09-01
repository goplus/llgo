package pyenv

import (
	"archive/tar"
	"compress/gzip"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"strings"
)

func downloadAndExtract(url, dir string) (err error) {
	if _, err = os.Stat(dir); err == nil {
		os.RemoveAll(dir)
	}
	tempDir := dir + ".temp"
	os.RemoveAll(tempDir)
	if err = os.MkdirAll(tempDir, 0755); err != nil {
		return fmt.Errorf("failed to create temporary directory: %w", err)
	}

	urlPath := strings.Split(url, "/")
	filename := urlPath[len(urlPath)-1]
	localFile := filepath.Join(tempDir, filename)
	if err = downloadFile(url, localFile); err != nil {
		return fmt.Errorf("failed to download file: %w", err)
	}
	defer os.Remove(localFile)

	if strings.HasSuffix(filename, ".tar.gz") || strings.HasSuffix(filename, ".tgz") {
		err = extractTarGz(localFile, tempDir)
	} else {
		return fmt.Errorf("unsupported archive format: %s", filename)
	}
	if err != nil {
		return fmt.Errorf("failed to extract archive: %w", err)
	}
	if err = os.Rename(tempDir, dir); err != nil {
		return fmt.Errorf("failed to rename directory: %w", err)
	}
	return nil
}

func downloadFile(url, filepath string) error {
	out, err := os.Create(filepath)
	if err != nil {
		return err
	}
	defer out.Close()
	resp, err := http.Get(url)
	if err != nil {
		return err
	}
	defer resp.Body.Close()
	if resp.StatusCode != http.StatusOK {
		return fmt.Errorf("bad status: %s", resp.Status)
	}
	_, err = io.Copy(out, resp.Body)
	return err
}

func extractTarGz(tarGzFile, dest string) error {
	file, err := os.Open(tarGzFile)
	if err != nil {
		return err
	}
	defer file.Close()
	gzr, err := gzip.NewReader(file)
	if err != nil {
		return err
	}
	defer gzr.Close()
	tr := tar.NewReader(gzr)
	for {
		header, err := tr.Next()
		if err == io.EOF {
			break
		}
		if err != nil {
			return err
		}
		target := filepath.Join(dest, header.Name)
		if !strings.HasPrefix(target, filepath.Clean(dest)+string(os.PathSeparator)) {
			return fmt.Errorf("%s: illegal file path", target)
		}
		switch header.Typeflag {
		case tar.TypeDir:
			if err := os.MkdirAll(target, 0755); err != nil {
				return err
			}
		case tar.TypeReg:
			if err := os.MkdirAll(filepath.Dir(target), 0755); err != nil {
				return err
			}
			f, err := os.OpenFile(target, os.O_CREATE|os.O_RDWR, os.FileMode(header.Mode))
			if err != nil {
				return err
			}
			if _, err := io.Copy(f, tr); err != nil {
				f.Close()
				return err
			}
			f.Close()
		case tar.TypeSymlink:
			if err := os.MkdirAll(filepath.Dir(target), 0755); err != nil {
				return err
			}
			_ = os.Remove(target)
			if err := os.Symlink(header.Linkname, target); err != nil {
				return err
			}
		case tar.TypeLink:
			if err := os.MkdirAll(filepath.Dir(target), 0755); err != nil {
				return err
			}
			_ = os.Remove(target)
			linkTarget := filepath.Join(dest, header.Linkname)
			if err := os.Link(linkTarget, target); err != nil {
				return err
			}

		}
	}
	return nil
}
