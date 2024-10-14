#!/bin/bash

cd "$(dirname "$0")" || exit 1

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

content=(
  abstract.rst
  allocation.rst
  apiabiversion.rst
  arg.rst
  bool.rst
  buffer.rst
  bytearray.rst
  bytes.rst
  call.rst
  capsule.rst
  cell.rst
  code.rst
  codec.rst
  complex.rst
  concrete.rst
  contextvars.rst
  conversion.rst
  coro.rst
  datetime.rst
  descriptor.rst
  dict.rst
  exceptions.rst
  file.rst
  float.rst
  frame.rst
  function.rst
  gcsupport.rst
  gen.rst
  hash.rst
  import.rst
  index.rst
  init.rst
  init_config.rst
  intro.rst
  iter.rst
  iterator.rst
  list.rst
  long.rst
  mapping.rst
  marshal.rst
  memory.rst
  memoryview.rst
  method.rst
  module.rst
  monitoring.rst
  none.rst
  number.rst
  object.rst
  objimpl.rst
  perfmaps.rst
  refcounting.rst
  reflection.rst
  sequence.rst
  set.rst
  slice.rst
  stable.rst
  structures.rst
  sys.rst
  time.rst
  tuple.rst
  type.rst
  typehints.rst
  typeobj.rst
  unicode.rst
  utilities.rst
  veryhigh.rst
  weakref.rst
)

base_url="https://raw.githubusercontent.com/python/cpython/refs/heads/main/Doc/c-api"

for i in "${content[@]}"; do
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
    echo "Skipping download for $i"
  fi
  
  # Generate the corresponding Go file regardless of whether the file was updated
  out_file="${i%.rst}.go"
  echo "Generating $out_file"
  if python gen.py "$i" "$out_file"; then
    echo "Successfully generated $out_file"
  else
    echo "Failed to generate $out_file"
    exit 1
  fi
done

goimports -w .

if [ "$update_files" = true ]; then
  echo "All files downloaded and processed successfully"
else
  echo "All files processed successfully (without downloading updates)"
fi
