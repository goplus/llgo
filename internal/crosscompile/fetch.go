package crosscompile

import (
	"archive/tar"
	"compress/gzip"
	"fmt"
	"io"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
)

func checkDownloadAndExtract(url, dir string) (wasiSdkRoot string, err error) {
	if _, err = os.Stat(dir); err != nil {
		os.RemoveAll(dir)
		tempDir := dir + ".temp"
		os.RemoveAll(tempDir)
		if err := os.MkdirAll(tempDir, 0755); err != nil {
			return "", fmt.Errorf("failed to create temporary directory: %w", err)
		}

		urlPath := strings.Split(url, "/")
		filename := urlPath[len(urlPath)-1]
		localFile := filepath.Join(tempDir, filename)
		if err = downloadFile(url, localFile); err != nil {
			return "", fmt.Errorf("failed to download file: %w", err)
		}
		defer os.Remove(localFile)

		if strings.HasSuffix(filename, ".tar.gz") || strings.HasSuffix(filename, ".tgz") {
			err = extractTarGz(localFile, tempDir)
		} else if strings.HasSuffix(filename, ".tar.xz") {
			err = extractTarXz(localFile, tempDir)
		} else {
			return "", fmt.Errorf("unsupported archive format: %s", filename)
		}
		if err != nil {
			return "", fmt.Errorf("failed to extract archive: %w", err)
		}
		if err = os.Rename(tempDir, dir); err != nil {
			return "", fmt.Errorf("failed to rename directory: %w", err)
		}
	}
	wasiSdkRoot = filepath.Join(dir, "wasi-sdk-25.0-x86_64-macos")
	return
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
		}
	}
	return nil
}

func extractTarXz(tarXzFile, dest string) error {
	// Use external tar command to extract .tar.xz files
	cmd := exec.Command("tar", "-xf", tarXzFile, "-C", dest)
	return cmd.Run()
}

// downloadAndExtractESPClang downloads and extracts ESP Clang binaries and libraries
func downloadAndExtractESPClang(platformSuffix, dir string) error {
	if _, err := os.Stat(dir); err == nil {
		os.RemoveAll(dir)
	}

	// Create download temp directory
	downloadDir := dir + "-download"
	os.RemoveAll(downloadDir)
	if err := os.MkdirAll(downloadDir, 0755); err != nil {
		return fmt.Errorf("failed to create download directory: %w", err)
	}
	defer os.RemoveAll(downloadDir)

	// Download clang binary package
	clangUrl := fmt.Sprintf("%s/clang-esp-%s-%s.tar.xz", espClangBaseUrl, espClangVersion, platformSuffix)
	clangFile := filepath.Join(downloadDir, fmt.Sprintf("clang-%s-%s.tar.xz", espClangVersion, platformSuffix))
	if err := downloadFile(clangUrl, clangFile); err != nil {
		return fmt.Errorf("failed to download clang from %s: %w", clangUrl, err)
	}

	// Create extract temp directory
	extractDir := dir + "-extract"
	os.RemoveAll(extractDir)
	if err := os.MkdirAll(extractDir, 0755); err != nil {
		return fmt.Errorf("failed to create extract directory: %w", err)
	}
	defer os.RemoveAll(extractDir)

	// Extract both packages to extract directory
	if err := extractTarXz(clangFile, extractDir); err != nil {
		return fmt.Errorf("failed to extract clang: %w", err)
	}

	// Rename esp-clang directory to final destination
	espClangDir := filepath.Join(extractDir, "esp-clang")
	if err := os.Rename(espClangDir, dir); err != nil {
		return fmt.Errorf("failed to rename esp-clang directory: %w", err)
	}
	return nil
}
