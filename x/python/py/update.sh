#!/bin/bash

cd "$(dirname "$0")" || exit 1

python_version="3.12"
file_list_url="https://api.github.com/repos/python/cpython/git/trees/${python_version}:Doc/c-api"
base_url="https://raw.githubusercontent.com/python/cpython/${python_version}/Doc/c-api"

# Check if the -u parameter is provided
update_files=false
while getopts "u" opt; do
  case $opt in
    u)
      update_files=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Fetch the file list based on whether update is requested or not
if [ "$update_files" = true ]; then
  # Fetch the file list from GitHub API
  content=$(curl -s "$file_list_url" | grep -o '"path": "[^"]*\.rst"' | sed 's/"path": "\(.*\)"/\1/')

  if [ -z "$content" ]; then
    echo "Failed to fetch file list from GitHub API"
    exit 1
  fi
else
  # Use local .rst files
  content=$(ls ./*.rst)
fi

# Array to store generated .go file names
generated_files=()

for i in $content; do
  if [ "$update_files" = true ]; then
    url="${base_url}/${i}"
    echo "Downloading from: $url"
    
    # Use curl's -w option to get the HTTP status code, and -s option to suppress progress output
    http_status=$(curl -s -w "%{http_code}" -o "$i" "$url")
    
    if [ "$http_status" -eq 200 ]; then
      echo "Successfully downloaded $i"
    else
      echo "Failed to download $i. HTTP status: $http_status"
      rm -f "$i"  # Delete any partial download
      exit 1
    fi
  else
    echo "Using local file: $i"
  fi
  
  # Generate the corresponding Go file regardless of whether the file was updated
  out_file="${i%.rst}.go"
  echo "Generating $out_file"
  if python gen.py "$i" "$out_file"; then
    echo "Successfully generated $out_file"
    generated_files+=("$out_file")
  else
    echo "Failed to generate $out_file"
    exit 1
  fi
done

# Remove .go files that are not in the generated list and not python.go or moduledef.go
echo "Cleaning up unnecessary .go files..."
for file in ./*.go; do
  if [[ ! " ${generated_files[*]} " =~ ${file##*/} ]] && [[ "$file" != "./python.go" ]] && [[ "$file" != "./moduledef.go" ]]; then
    echo "Removing $file"
    rm "$file"
  fi
done

goimports -w .

if [ "$update_files" = true ]; then
  echo "All files downloaded, processed, and cleaned up successfully"
else
  echo "All files processed and cleaned up successfully (without downloading updates)"
fi
