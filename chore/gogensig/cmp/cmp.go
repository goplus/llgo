package cmp

import (
	"bufio"
	"bytes"
	"strings"
	"unicode"

	"github.com/google/go-cmp/cmp"
)

func skipSpace(data []byte, from int) int {
	dataBuf := bytes.NewBuffer(data[from:])
	index := from
	for {
		rn, sz, err := dataBuf.ReadRune()
		if err != nil {
			break
		}
		if !unicode.IsSpace(rn) {
			break
		}
		index = index + sz
	}
	return index
}

func SplitLineIgnoreSpace(s string) []string {
	buf := bytes.NewBufferString(s)
	scan := bufio.NewScanner(buf)
	results := make([]string, 0)
	for scan.Scan() {
		lineText := scan.Text()
		lineTextBuf := bytes.NewBufferString(lineText)
		lineTextScan := bufio.NewScanner(lineTextBuf)
		lineTextScan.Split(func(data []byte, atEOF bool) (advance int, token []byte, err error) {
			if atEOF && len(data) == 0 {
				return 0, nil, nil
			}
			if i := bytes.IndexAny(data, " \t"); i >= 0 {
				ii := skipSpace(data, i+1)
				return ii, data[0:i], nil
			}
			if atEOF {
				return len(data), data, nil
			}
			return 0, nil, nil
		})

		strBuilder := strings.Builder{}
		writeSpace := false
		total := 0
		for lineTextScan.Scan() {
			word := lineTextScan.Text()
			if writeSpace {
				strBuilder.WriteRune(' ')
			}
			n, err := strBuilder.WriteString(word)
			if err != nil {
				break
			}
			total += n
			writeSpace = total > 0
		}
		if total > 0 {
			results = append(results, strBuilder.String())
		}
	}
	return results
}

func EqualStringIgnoreSpace(s1 string, s2 string) (bool, string) {
	arr1 := SplitLineIgnoreSpace(s1)
	arr2 := SplitLineIgnoreSpace(s2)
	if !cmp.Equal(arr1, arr2) {
		return false, cmp.Diff(arr1, arr2)
	}
	return true, ""
}
