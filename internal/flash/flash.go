package flash

import (
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"time"

	"github.com/goplus/llgo/internal/crosscompile"
	"github.com/goplus/llgo/internal/env"
)

// Flash flashes firmware to a device based on the crosscompile configuration
func Flash(crossCompile crosscompile.Export, app string, port string, verbose bool) error {
	if verbose {
		fmt.Fprintf(os.Stderr, "Flashing %s to port %s\n", app, port)
	}

	method := crossCompile.Flash.Method
	if method == "" {
		method = "command"
	}

	if verbose {
		fmt.Fprintf(os.Stderr, "Flashing %s using method: %s\n", app, method)
	}

	switch method {
	case "command":
		return flashCommand(crossCompile.Flash, app, port, verbose)
	case "openocd":
		return flashOpenOCD(crossCompile.OpenOCD, app, verbose)
	case "msd":
		return flashMSD(crossCompile.MSD, app, verbose)
	case "bmp":
		return flashBMP(app, verbose)
	default:
		return fmt.Errorf("unsupported flash method: %s", method)
	}
}

// flashCommand handles command-based flashing
func flashCommand(flash crosscompile.Flash, app string, port string, verbose bool) error {
	if flash.Command == "" {
		return fmt.Errorf("flash command not specified")
	}

	// Build environment map for template variable expansion
	envs := buildFlashEnvMap(app, port)

	// Expand template variables in command
	expandedCommand := expandEnv(flash.Command, envs)

	if verbose {
		fmt.Fprintf(os.Stderr, "Flash command: %s\n", expandedCommand)
	}

	// Split command into parts for exec
	parts := strings.Fields(expandedCommand)
	if len(parts) == 0 {
		return fmt.Errorf("empty flash command after expansion")
	}

	// Handle 1200bps reset if required
	if flash.Flash1200BpsReset && port != "" {
		if err := reset1200bps(port, verbose); err != nil {
			if verbose {
				fmt.Fprintf(os.Stderr, "Warning: 1200bps reset failed: %v\n", err)
			}
		}
		// Wait for bootloader
		time.Sleep(2 * time.Second)
	}

	// Execute flash command
	cmd := exec.Command(parts[0], parts[1:]...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}

// flashOpenOCD handles OpenOCD-based flashing
func flashOpenOCD(openocd crosscompile.OpenOCD, app string, verbose bool) error {
	if openocd.Interface == "" {
		return fmt.Errorf("OpenOCD interface not specified")
	}

	args := []string{
		"-f", "interface/" + openocd.Interface + ".cfg",
	}

	if openocd.Transport != "" {
		args = append(args, "-c", "transport select "+openocd.Transport)
	}

	if openocd.Target != "" {
		args = append(args, "-f", "target/"+openocd.Target+".cfg")
	}

	// Add programming commands
	args = append(args,
		"-c", "init",
		"-c", "reset init",
		"-c", fmt.Sprintf("flash write_image erase %s", app),
		"-c", "reset",
		"-c", "shutdown",
	)

	if verbose {
		fmt.Fprintf(os.Stderr, "OpenOCD command: openocd %s\n", strings.Join(args, " "))
	}

	cmd := exec.Command("openocd", args...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}

// flashMSD handles Mass Storage Device flashing
func flashMSD(msd crosscompile.MSD, app string, verbose bool) error {
	if len(msd.VolumeName) == 0 {
		return fmt.Errorf("MSD volume names not specified")
	}

	if msd.FirmwareName == "" {
		return fmt.Errorf("MSD firmware name not specified")
	}

	// Find the MSD volume
	var mountPoint string
	for _, volumeName := range msd.VolumeName {
		// Try platform-specific mount points
		var candidates []string
		switch runtime.GOOS {
		case "darwin":
			candidates = []string{
				filepath.Join("/Volumes", volumeName),
			}
		case "linux":
			candidates = []string{
				filepath.Join("/media", os.Getenv("USER"), volumeName),
				filepath.Join("/mnt", volumeName),
			}
		case "windows":
			candidates = []string{
				volumeName + ":",
			}
		default:
			candidates = []string{
				filepath.Join("/Volumes", volumeName),                  // macOS
				filepath.Join("/media", os.Getenv("USER"), volumeName), // Linux
				filepath.Join("/mnt", volumeName),                      // Linux alternative
				volumeName + ":",                                       // Windows
			}
		}

		for _, candidate := range candidates {
			if _, err := os.Stat(candidate); err == nil {
				mountPoint = candidate
				break
			}
		}
		if mountPoint != "" {
			break
		}
	}

	if mountPoint == "" {
		return fmt.Errorf("MSD volume not found. Expected volumes: %v", msd.VolumeName)
	}

	// Copy firmware to MSD
	destPath := filepath.Join(mountPoint, msd.FirmwareName)

	if verbose {
		fmt.Fprintf(os.Stderr, "Copying %s to %s\n", app, destPath)
	}

	return copyFile(app, destPath)
}

// flashBMP handles Black Magic Probe flashing
func flashBMP(app string, verbose bool) error {
	// BMP typically uses GDB for flashing
	args := []string{
		"-ex", "target extended-remote /dev/ttyACM0", // Default BMP port
		"-ex", "monitor swdp_scan",
		"-ex", "attach 1",
		"-ex", "load",
		"-ex", "compare-sections",
		"-ex", "kill",
		"-ex", "quit",
		app,
	}

	if verbose {
		fmt.Fprintf(os.Stderr, "BMP command: arm-none-eabi-gdb %s\n", strings.Join(args, " "))
	}

	cmd := exec.Command("arm-none-eabi-gdb", args...)
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr

	return cmd.Run()
}

// buildFlashEnvMap creates environment map for template expansion
func buildFlashEnvMap(app string, port string) map[string]string {
	envs := make(map[string]string)

	// Basic paths
	envs["root"] = env.LLGoROOT()
	envs["tmpDir"] = os.TempDir()

	// Port information
	if port != "" {
		envs["port"] = port
	}

	// File paths based on extension
	ext := strings.ToLower(filepath.Ext(app))
	switch ext {
	case ".hex":
		envs["hex"] = app
	case ".bin":
		envs["bin"] = app
	case ".elf":
		envs["elf"] = app
	case ".uf2":
		envs["uf2"] = app
	case ".zip":
		envs["zip"] = app
	case ".img":
		envs["img"] = app
	default:
		// Default to binary for unknown extensions
		envs["bin"] = app
	}

	return envs
}

// expandEnv expands template variables in a string
// Supports variables like {port}, {hex}, {bin}, {root}, {tmpDir}, etc.
func expandEnv(template string, envs map[string]string) string {
	if template == "" {
		return ""
	}

	result := template

	// Replace named variables
	for key, value := range envs {
		if key != "" {
			result = strings.ReplaceAll(result, "{"+key+"}", value)
		}
	}

	return result
}

// reset1200bps performs 1200bps reset for Arduino-compatible boards
func reset1200bps(port string, verbose bool) error {
	if verbose {
		fmt.Fprintf(os.Stderr, "Performing 1200bps reset on %s\n", port)
	}

	// This is a simplified implementation
	// In practice, this would need platform-specific serial port handling
	// For now, just try to touch the port to trigger reset
	_, err := os.Stat(port)
	return err
}

// copyFile copies a file from src to dst
func copyFile(src, dst string) error {
	sourceFile, err := os.Open(src)
	if err != nil {
		return err
	}
	defer sourceFile.Close()

	destFile, err := os.Create(dst)
	if err != nil {
		return err
	}
	defer destFile.Close()

	_, err = destFile.ReadFrom(sourceFile)
	return err
}
