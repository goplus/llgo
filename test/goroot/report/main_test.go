/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package main

import (
	"strings"
	"testing"
)

func TestRenderReportIncludesFailuresAndUnexpectedPassesWithAllLanes(t *testing.T) {
	input := strings.Join([]string{
		"darwin/arm64\t1.26.7\t0\tfixedbugs/regression.go\trun\tpass",
		"darwin/arm64\t1.27.0\t0\tfixedbugs/regression.go\trun\tpass",
		"linux/amd64\t1.26.7\t0\tfixedbugs/regression.go\trun\tpass",
		"linux/amd64\t1.27.0\t0\tfixedbugs/regression.go\trun\tunexpected-fail",
		"darwin/arm64\t1.26.7\t1\tfixedbugs/stale.go\trun\tunexpected-pass",
		"darwin/arm64\t1.27.0\t1\tfixedbugs/stale.go\trun\texpected-fail",
		"linux/amd64\t1.26.7\t1\tfixedbugs/stale.go\trun\texpected-fail",
		"linux/amd64\t1.27.0\t1\tfixedbugs/stale.go\trun\tflaky-fail",
		"darwin/arm64\t1.26.7\t2\tfixedbugs/healthy.go\trun\tpass",
		"darwin/arm64\t1.26.7\t2\tfixedbugs/known.go\trun\texpected-fail",
		"darwin/arm64\t1.26.7\t2\tfixedbugs/flaky.go\trun\tflaky-fail",
	}, "\n")
	results, err := parseResults(strings.NewReader(input))
	if err != nil {
		t.Fatal(err)
	}
	report, err := renderReport(results, []string{"darwin/arm64", "linux/amd64"}, []string{"1.26.7", "1.27.0"}, "https://example.com/run", "")
	if err != nil {
		t.Fatal(err)
	}
	for _, want := range []string{
		"| Case | 🍎 🦾<br>1.26 | 🍎 🦾<br>1.27 | 🐧 🖥️<br>1.26 | 🐧 🖥️<br>1.27 |",
		"| `fixedbugs/regression.go` | ✅ | ✅ | ✅ | ❌ |",
		"| `fixedbugs/stale.go` | ⚠️ | 🟡 | 🟡 | 🔀❌ |",
		"| `fixedbugs/known.go` | 🟡 | · | · | · |",
		"| `fixedbugs/flaky.go` | 🔀❌ | · | · | · |",
		"| darwin/arm64 / 1.26.7 | 2 | 1 | 1 | 1 | 0 | 0 | 0 |",
		"[Workflow run](https://example.com/run)",
	} {
		if !strings.Contains(report, want) {
			t.Errorf("report does not contain %q:\n%s", want, report)
		}
	}
	if strings.Contains(report, "healthy.go") {
		t.Fatalf("healthy case should not be included:\n%s", report)
	}
}

func TestRenderReportShowsUnavailableLane(t *testing.T) {
	results := []caseResult{{
		lane:      lane{platform: "linux/amd64", version: "1.27.0"},
		shard:     "0",
		casePath:  "new.go",
		directive: "run",
		result:    "unexpected-fail",
	}}
	report, err := renderReport(results, []string{"linux/amd64"}, []string{"1.26.7", "1.27.0"}, "", "")
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(report, "| `new.go` | · | ❌ |") {
		t.Fatalf("missing unavailable lane marker:\n%s", report)
	}
}

func TestParseResultsRejectsUnknownResult(t *testing.T) {
	_, err := parseResults(strings.NewReader("linux/amd64\t1.27.0\t0\tcase.go\trun\tmystery\n"))
	if err == nil || !strings.Contains(err.Error(), "unknown result") {
		t.Fatalf("parseResults error = %v, want unknown result", err)
	}
}

func TestRenderReportRejectsDuplicateLaneResult(t *testing.T) {
	result := caseResult{
		lane:      lane{platform: "linux/amd64", version: "1.27.0"},
		casePath:  "case.go",
		directive: "run",
		result:    "pass",
	}
	_, err := renderReport([]caseResult{result, result}, []string{"linux/amd64"}, []string{"1.27.0"}, "", "")
	if err == nil || !strings.Contains(err.Error(), "duplicate result") {
		t.Fatalf("renderReport error = %v, want duplicate result", err)
	}
}

func TestRenderReportWasmPlatformLabels(t *testing.T) {
	results := []caseResult{
		{
			lane:      lane{platform: "js/wasm", version: "1.27.0"},
			shard:     "0",
			casePath:  "wasm_test.go",
			directive: "run",
			result:    "unexpected-fail",
		},
		{
			lane:      lane{platform: "wasip1/wasm", version: "1.27.0"},
			shard:     "0",
			casePath:  "wasm_test.go",
			directive: "run",
			result:    "pass",
		},
	}
	report, err := renderReport(results, []string{"js/wasm", "wasip1/wasm"}, []string{"1.27.0"}, "", "")
	if err != nil {
		t.Fatal(err)
	}
	wantHeader := "| Case | 🕸️ 📜 JS<br>1.27 | 🕸️ 🔌 WASI<br>1.27 |"
	if !strings.Contains(report, wantHeader) {
		t.Fatalf("report does not contain wasm header %q:\n%s", wantHeader, report)
	}
}

func TestRenderReportMentionOnMismatch(t *testing.T) {
	mismatchResults := []caseResult{
		{
			lane:      lane{platform: "linux/amd64", version: "1.27.0"},
			shard:     "0",
			casePath:  "fail.go",
			directive: "run",
			result:    "unexpected-fail",
		},
	}
	reportWithMention, err := renderReport(mismatchResults, []string{"linux/amd64"}, []string{"1.27.0"}, "", "fennoai")
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(reportWithMention, "@fennoai") || !strings.Contains(reportWithMention, "investigate") {
		t.Fatalf("expected mention @fennoai with failure triage instruction, got:\n%s", reportWithMention)
	}
	if !strings.Contains(reportWithMention, "infrastructure/configuration failures") {
		t.Fatalf("expected warning to describe all mismatch classes, got:\n%s", reportWithMention)
	}

	passResults := []caseResult{
		{
			lane:      lane{platform: "linux/amd64", version: "1.27.0"},
			shard:     "0",
			casePath:  "ok.go",
			directive: "run",
			result:    "pass",
		},
	}
	reportNoMismatch, err := renderReport(passResults, []string{"linux/amd64"}, []string{"1.27.0"}, "", "fennoai")
	if err != nil {
		t.Fatal(err)
	}
	if strings.Contains(reportNoMismatch, "@fennoai") {
		t.Fatalf("unexpected mention when no mismatches:\n%s", reportNoMismatch)
	}
}

func TestReportOutcomeCounts(t *testing.T) {
	var results []caseResult
	for result := range knownResults {
		results = append(results, caseResult{
			lane:     lane{platform: "linux/amd64", version: "1.27.0"},
			casePath: result + ".go", directive: "run", result: result,
		})
	}
	report, err := renderReport(results, []string{"linux/amd64"}, []string{"1.27.0"}, "", "")
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(report, "| linux/amd64 / 1.27.0 | 2 | 1 | 1 | 1 | 1 | 2 | 2 |") {
		t.Fatalf("outcomes were not counted separately:\n%s", report)
	}
}

func TestReportKnownFailureAndStaleExpectationTriage(t *testing.T) {
	for _, result := range []string{"expected-fail", "flaky-fail", "unexpected-pass"} {
		t.Run(result, func(t *testing.T) {
			report, err := renderReport([]caseResult{{
				lane:     lane{platform: "linux/amd64", version: "1.27.0"},
				casePath: "case.go", directive: "run", result: result,
			}}, []string{"linux/amd64"}, []string{"1.27.0"}, "", "fennoai")
			if err != nil {
				t.Fatal(err)
			}
			if !strings.Contains(report, "`case.go`") || strings.Contains(report, "investigate") {
				t.Fatalf("known outcome is hidden or treated as a new failure:\n%s", report)
			}
			if got := strings.Contains(report, "@fennoai"); got != (result == "unexpected-pass") {
				t.Fatalf("unexpected mention for %s:\n%s", result, report)
			}
		})
	}
}
