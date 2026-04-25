#!/bin/bash
# ESP serial targets smoke test (emulator run only).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR="$SCRIPT_DIR/.test_tmp_$$"

CASE_ROOT="$SCRIPT_DIR/testdata/esp32-serial"

cleanup() {
    rm -rf "$TEMP_DIR"
}
trap cleanup EXIT

run_emulator_smoke() {
    local target="$1"
    local label="$2"
    local case_dir="$3"
    local expected_file="$4"

    echo ""
    echo "=== Smoke: $label emulator output ==="

    local run_out_file
    run_out_file=$(mktemp "${TEMP_DIR}/run_${target}.XXXX.log")

    set +e
    llgo run -a -target="$target" -emulator "$case_dir" 2>&1 | tee "$run_out_file"
    local run_rc=${PIPESTATUS[0]}
    set -e

    local run_out
    run_out=$(cat "$run_out_file")
    rm -f "$run_out_file"

    if [ "$run_rc" -ne 0 ]; then
        echo "[WARN] $label emulator exited with code $run_rc; validating output tail instead"
    fi

    local normalized_out
    normalized_out=$(printf "%s\n" "$run_out" | tr -d '\r')

    local expected_tail
    expected_tail=$(cat "$expected_file")

    local normalized_expected
    normalized_expected=$(printf "%s" "$expected_tail" | tr -d '\r')

    local n
    n=$(printf "%s\n" "$normalized_expected" | awk 'END{print NR}')
    if [ -z "$n" ] || [ "$n" -le 0 ]; then
        echo "✗ FAIL: invalid expected tail for $label"
        exit 1
    fi

    local actual_tail
    actual_tail=$(printf "%s\n" "$normalized_out" | awk 'NF{print}' | tail -n "$n")

    if [ "$actual_tail" = "$normalized_expected" ]; then
        echo "✓ PASS: $label output tail (last $n line(s)) matched"
    else
        echo "✗ FAIL: $label output mismatch"
        echo "Expected tail (last $n line(s)):"
        printf "%s\n" "$normalized_expected"
        echo "Actual tail:"
        printf "%s\n" "$actual_tail"
        echo ""
        echo "Full output:"
        echo "$run_out"
        exit 1
    fi
}

run_case() {
    local case_dir="$1"
    local case_name
    case_name="$(basename "$case_dir")"

    local expected_file="$case_dir/expect.txt"
    if [ ! -f "$case_dir/main.go" ]; then
        echo "✗ FAIL: missing testcase source: $case_dir/main.go"
        exit 1
    fi

    case ",${LLGO_ESP_SERIAL_TARGETS:-esp32c3-basic,esp32}," in
        *,esp32c3-basic,*) run_emulator_smoke "esp32c3-basic" "ESP32-C3 [$case_name]" "$case_dir" "$expected_file" ;;
    esac
    case ",${LLGO_ESP_SERIAL_TARGETS:-esp32c3-basic,esp32}," in
        *,esp32,*) run_emulator_smoke "esp32" "ESP32 [$case_name]" "$case_dir" "$expected_file" ;;
    esac
}

validate_targets() {
    local targets="${LLGO_ESP_SERIAL_TARGETS:-esp32c3-basic,esp32}"
    local target
    IFS=',' read -r -a target_list <<< "$targets"
    if [ "${#target_list[@]}" -eq 0 ]; then
        echo "✗ FAIL: LLGO_ESP_SERIAL_TARGETS must not be empty"
        exit 1
    fi
    for target in "${target_list[@]}"; do
        case "$target" in
            esp32|esp32c3-basic) ;;
            *)
                echo "✗ FAIL: unsupported LLGO_ESP_SERIAL_TARGETS entry: $target"
                echo "Supported targets: esp32, esp32c3-basic"
                exit 1
                ;;
        esac
    done
}

validate_case_shard() {
    if [ -z "${LLGO_ESP_SERIAL_CASE_SHARD_TOTAL:-}" ] && [ -z "${LLGO_ESP_SERIAL_CASE_SHARD_INDEX:-}" ]; then
        return
    fi
    case "${LLGO_ESP_SERIAL_CASE_SHARD_TOTAL:-}" in
        ''|*[!0-9]*) echo "✗ FAIL: LLGO_ESP_SERIAL_CASE_SHARD_TOTAL must be a positive integer"; exit 1 ;;
    esac
    case "${LLGO_ESP_SERIAL_CASE_SHARD_INDEX:-}" in
        ''|*[!0-9]*) echo "✗ FAIL: LLGO_ESP_SERIAL_CASE_SHARD_INDEX must be a non-negative integer"; exit 1 ;;
    esac
    if [ "$LLGO_ESP_SERIAL_CASE_SHARD_TOTAL" -lt 1 ]; then
        echo "✗ FAIL: LLGO_ESP_SERIAL_CASE_SHARD_TOTAL must be a positive integer"
        exit 1
    fi
    if [ "$LLGO_ESP_SERIAL_CASE_SHARD_INDEX" -ge "$LLGO_ESP_SERIAL_CASE_SHARD_TOTAL" ]; then
        echo "✗ FAIL: LLGO_ESP_SERIAL_CASE_SHARD_INDEX must be less than LLGO_ESP_SERIAL_CASE_SHARD_TOTAL"
        exit 1
    fi
}

run_all_cases() {
    local found=0
    local selected=0
    local case_dir
    local case_index=0
    exec 3< <(find "$CASE_ROOT" -mindepth 1 -maxdepth 1 -type d | sort)
    while IFS= read -r case_dir <&3; do
        if [ -f "$case_dir/main.go" ] && [ -f "$case_dir/expect.txt" ]; then
            found=1
            if [ -n "${LLGO_ESP_SERIAL_CASE_SHARD_TOTAL:-}" ]; then
                if [ $((case_index % LLGO_ESP_SERIAL_CASE_SHARD_TOTAL)) -ne "$LLGO_ESP_SERIAL_CASE_SHARD_INDEX" ]; then
                    case_index=$((case_index + 1))
                    continue
                fi
            fi
            selected=$((selected + 1))
            run_case "$case_dir"
            case_index=$((case_index + 1))
        fi
    done
    exec 3<&-

    if [ "$found" -eq 0 ]; then
        echo "✗ FAIL: no testcase found under $CASE_ROOT (need main.go + expect.txt)"
        exit 1
    fi
    if [ "$selected" -eq 0 ]; then
        echo "✗ FAIL: no testcase selected by ESP serial shard"
        exit 1
    fi
}

mkdir -p "$TEMP_DIR"
if [ ! -d "$CASE_ROOT" ]; then
    echo "✗ FAIL: testcase root not found: $CASE_ROOT"
    exit 1
fi

cd "$SCRIPT_DIR"
validate_targets
validate_case_shard

echo ""
echo "=== ESP Serial Smoke Tests: Emulator Run (${LLGO_ESP_SERIAL_TARGETS:-esp32c3-basic,esp32}) ==="
if [ -n "${LLGO_ESP_SERIAL_CASE_SHARD_TOTAL:-}" ]; then
    echo "=== Case shard: ${LLGO_ESP_SERIAL_CASE_SHARD_INDEX}/${LLGO_ESP_SERIAL_CASE_SHARD_TOTAL} ==="
fi
run_all_cases

echo ""
echo "=== Smoke Tests Passed ==="
echo "✓ ESP32-C3 and ESP32 emulator smoke passed for all serial testcases"
echo "✓ Cases are discovered only from testdata/esp32-serial (main.go + expect.txt)"
