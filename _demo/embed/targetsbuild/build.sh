#!/bin/bash

# Function to display usage information
show_usage() {
	cat << EOF
Usage: $(basename "$0") [OPTIONS] [TARGET_FILE]

Build targets for llgo across multiple platforms.

OPTIONS:
    -h, --help      Show this help message and exit

ARGUMENTS:
    TARGET_FILE     Optional. A text file containing target names, one per line.
                    Lines starting with # are treated as comments and ignored.
                    Empty lines are also ignored.

BEHAVIOR:
    Without TARGET_FILE:
        - Automatically discovers all targets from ../../targets/*.json files
        - Extracts target names from JSON filenames

    With TARGET_FILE:
        - Reads target names from the specified file
        - Supports comments (lines starting with #)
        - Ignores empty lines and whitespace

IGNORED TARGETS:
    The following targets are automatically ignored and not built:
    atmega1280, atmega2560, atmega328p, atmega32u4, attiny85,
    fe310, k210, riscv32, riscv64, rp2040

RESULT CATEGORIES:
    ✅ Successful: Build completed successfully
    🔕 Ignored: Target is in the ignore list
    ⚠️  Warned: Build failed with configuration warnings
    ❌ Failed: Build failed with errors

EXIT CODES:
    0    All builds successful, ignored, or warned only
    1    One or more builds failed with errors

EXAMPLES:
    $(basename "$0")                    # Build all targets from JSON files
    $(basename "$0") my-targets.txt     # Build targets from file
    $(basename "$0") --help             # Show this help

TARGET FILE FORMAT:
    # This is a comment
    esp32
    cortex-m4

    # Another comment
    riscv64
EOF
}

# Check for help flag
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
	show_usage
	exit 0
fi

# Check for invalid number of arguments
if [ $# -gt 1 ]; then
	echo "Error: Too many arguments."
	echo "Use '$(basename "$0") --help' for usage information."
	exit 1
fi

# Initialize arrays to store results
successful_targets=()
ignored_targets=()
warned_targets=()
failed_targets=()
targets_to_build=()

# Define ignore list
ignore_list=(
	"atmega1280"
	"atmega2560"
	"atmega328p"
	"atmega32u4"
	"attiny85"
	"fe310"
	"k210"
	"riscv32"
	"riscv64"
	"rp2040"
)

# Build the targets list based on input method
if [ $# -eq 1 ]; then
	# Read targets from file
	target_file="$1"
	if [ ! -f "$target_file" ]; then
		echo "Error: Target file '$target_file' not found."
		echo "Use '$(basename "$0") --help' for usage information."
		exit 1
	fi

	while IFS= read -r target || [[ -n "$target" ]]; do
		# Skip empty lines and comments
		if [[ -z "$target" || "$target" =~ ^[[:space:]]*# ]]; then
			continue
		fi

		# Trim whitespace
		target=$(echo "$target" | xargs)
		targets_to_build+=("$target")
	done < "$target_file"
else
	# Use targets from *.json files
	for target_file in ../../../targets/*.json; do
		# Extract target name from filename (remove path and .json extension)
		target=$(basename "$target_file" .json)
		targets_to_build+=("$target")
	done
fi

# Process each target
for target in "${targets_to_build[@]}"; do
	# Check if target is in ignore list
	if [[ " ${ignore_list[@]} " =~ " ${target} " ]]; then
		echo 🔕 $target "(ignored)"
		ignored_targets+=("$target")
		continue
	fi

	output=$(../../../llgo.sh build -target $target -o hello.elf . 2>&1)
	if [ $? -eq 0 ]; then
		echo ✅ $target `file hello.elf`
		successful_targets+=("$target")
	else
		# Check if output contains warning messages
		if echo "$output" | grep -q "does not have a valid LLVM target triple\|does not have a valid CPU configuration"; then
			echo ⚠️ $target
			echo "$output"
			warned_targets+=("$target")
		else
			echo ❌ $target
			echo "$output"
			failed_targets+=("$target")
		fi
	fi
done

echo ""
echo "----------------------------------------"

# Output successful targets
echo "Successful targets (${#successful_targets[@]} total):"
for target in "${successful_targets[@]}"; do
	echo "$target"
done

echo ""
echo "Ignored targets (${#ignored_targets[@]} total):"
for target in "${ignored_targets[@]}"; do
	echo "$target"
done

echo ""
echo "Warned targets (${#warned_targets[@]} total):"
for target in "${warned_targets[@]}"; do
	echo "$target"
done

echo ""
echo "Failed targets (${#failed_targets[@]} total):"
for target in "${failed_targets[@]}"; do
	echo "$target"
done

# Exit with error code if there are any failed targets
if [ ${#failed_targets[@]} -gt 0 ]; then
	echo ""
	echo "Build failed with ${#failed_targets[@]} failed targets."
	exit 1
fi
