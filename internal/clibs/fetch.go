package clibs

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
)

// fetchLib fetches the library source based on the configuration
func (p *Lib) fetchLib() error {
	// Get download directory
	downloadDir := getDownloadDir(p)

	// Temporary download directory for atomic operations
	downloadTmpDir := downloadDir + "_tmp"

	// Create required directories
	if err := os.MkdirAll(filepath.Dir(downloadDir), 0755); err != nil {
		return fmt.Errorf("failed to create parent directory for download: %v", err)
	}

	// Clean old temporary directory if exists
	if err := os.RemoveAll(downloadTmpDir); err != nil {
		return fmt.Errorf("failed to clean temporary download directory: %v", err)
	}

	// Create new temporary directory
	if err := os.MkdirAll(downloadTmpDir, 0755); err != nil {
		return fmt.Errorf("failed to create temporary download directory: %v", err)
	}

	var fetchErr error

	// Choose download method based on configuration
	if p.Config.Git != nil && p.Config.Git.Repo != "" {
		fmt.Printf("  Fetching from git repository: %s\n", p.Config.Git.Repo)
		fetchErr = fetchFromGit(p.Config.Git, downloadTmpDir)
	} else if len(p.Config.Files) > 0 {
		fmt.Printf("  Fetching from files\n")
		fetchErr = fetchFromFiles(p.Config.Files, downloadTmpDir, true)
	}

	// If download fails, clean temporary directory and return error
	if fetchErr != nil {
		fmt.Printf("  Error fetching library: %v\n", fetchErr)
		os.RemoveAll(downloadTmpDir)
		return fetchErr
	}

	// Write hash file to mark successful download
	if err := saveHash(downloadTmpDir, p.Config, false); err != nil {
		fmt.Printf("  Error writing hash file: %v\n", err)
		os.RemoveAll(downloadTmpDir)
		return err
	}

	// Atomically replace old download directory with new one
	if _, err := os.Stat(downloadDir); err == nil {
		// If download directory exists, remove it
		if err := os.RemoveAll(downloadDir); err != nil {
			fmt.Printf("  Error removing old download directory: %v\n", err)
			os.RemoveAll(downloadTmpDir)
			return err
		}
	}

	// Rename temporary directory to final directory
	if err := os.Rename(downloadTmpDir, downloadDir); err != nil {
		fmt.Printf("  Error renaming temporary directory: %v\n", err)
		os.RemoveAll(downloadTmpDir)
		return err
	}

	return nil
}

// fetchFromGit clones a git repository
func fetchFromGit(gitConfig *GitSpec, downloadDir string) error {
	// Prepare git command
	args := []string{"clone"}

	// Add reference if specified
	if gitConfig.Ref != "" {
		args = append(args, "--branch", gitConfig.Ref)
	}

	// Add depth 1 to speed up clone
	args = append(args, "--depth", "1")

	// Add repository URL and destination
	args = append(args, gitConfig.Repo, downloadDir)

	// Execute git command
	cmd := exec.Command("git", args...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	if err := cmd.Run(); err != nil {
		return fmt.Errorf("git clone failed: %v", err)
	}

	// Clean .git directory to save space
	gitDir := filepath.Join(downloadDir, ".git")
	if err := os.RemoveAll(gitDir); err != nil {
		return fmt.Errorf("failed to remove .git directory: %v", err)
	}

	return nil
}

// fetchFromFiles downloads files specified in the configuration
func fetchFromFiles(files []FileSpec, downloadDir string, clean bool) error {
	// Clean existing files if requested
	if clean {
		dirEntries, err := os.ReadDir(downloadDir)
		if err != nil && !os.IsNotExist(err) {
			return err
		}
		for _, entry := range dirEntries {
			filePath := filepath.Join(downloadDir, entry.Name())
			if entry.IsDir() {
				if err := os.RemoveAll(filePath); err != nil {
					return err
				}
			} else {
				if err := os.Remove(filePath); err != nil {
					return err
				}
			}
		}
	}

	if err := os.MkdirAll(downloadDir, 0755); err != nil {
		return err
	}

	// Download and process each file
	for i, file := range files {
		if file.URL == "" {
			continue
		}

		// Extract filename from URL
		parts := strings.Split(file.URL, "/")
		filename := parts[len(parts)-1]
		tmpFilePath := filepath.Join(downloadDir, filename+".download") // Temporary file
		finalFilePath := filepath.Join(downloadDir, filename)           // Final file location

		fmt.Printf("  Downloading (%d/%d): %s\n", i+1, len(files), file.URL)

		// Download file
		resp, err := http.Get(file.URL)
		if err != nil {
			return fmt.Errorf("download failed: %v", err)
		}
		defer resp.Body.Close()

		if resp.StatusCode != http.StatusOK {
			return fmt.Errorf("bad status: %s", resp.Status)
		}

		// Create temporary file
		out, err := os.Create(tmpFilePath)
		if err != nil {
			return fmt.Errorf("failed to create file: %v", err)
		}

		// Write file content
		_, err = io.Copy(out, resp.Body)
		out.Close() // Ensure file is closed even if error occurs
		if err != nil {
			os.Remove(tmpFilePath) // Clean up temporary file
			return fmt.Errorf("failed to write file: %v", err)
		}

		// Rename temporary file to final location
		if err := os.Rename(tmpFilePath, finalFilePath); err != nil {
			os.Remove(tmpFilePath)
			return fmt.Errorf("failed to rename file: %v", err)
		}

		// Process archive files if extraction is not disabled
		if !file.NoExtract && (strings.HasSuffix(filename, ".tar.gz") || strings.HasSuffix(filename, ".tgz")) {
			// Determine extraction directory
			extractDir := downloadDir
			if file.ExtractDir != "" {
				extractDir = filepath.Join(downloadDir, file.ExtractDir)
				if err := os.MkdirAll(extractDir, 0755); err != nil {
					return fmt.Errorf("failed to create extraction directory: %v", err)
				}
			}

			fmt.Printf("  Extracting: %s into %s\n", filename, extractDir)
			// Extract archive
			cmd := exec.Command("tar", "-xzf", finalFilePath, "-C", extractDir)
			output, err := cmd.CombinedOutput()
			if err != nil {
				return fmt.Errorf("extraction failed: %v - %s", err, output)
			}
		}
	}

	return nil
}
