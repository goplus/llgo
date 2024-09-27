package tidy

import (
	"bufio"
	"bytes"
	"fmt"
	"io/fs"
	"os"
	"path/filepath"
	"strings"
)

type Commentidy struct {
}

func NewCommentidy() *Commentidy {
	return &Commentidy{}
}

func (p *Commentidy) TidyFile(filename string) ([]byte, error) {
	b, err := os.ReadFile(filename)
	if err != nil {
		return nil, err
	}
	return p.TidyBytes(b)
}

func (p *Commentidy) skipToAny(data []byte, from int, runes ...rune) (_pos int, _rn rune, _sz int, _err error) {
	if from >= len(data) {
		return from, rune(0), from, fmt.Errorf("%s", "index out of bound")
	}
	dataBuf := bytes.NewBuffer(data[from:])
	index := from
	var rn rune = rune(0)
	var sz int = 0
	var err error = nil
	for {
		rn, sz, err = dataBuf.ReadRune()
		if err != nil {
			break
		}
		for _, q := range runes {
			if q == rn {
				return index, rn, sz, nil
			}
		}
		index = index + sz
	}
	return index, rn, sz, fmt.Errorf("%s", "not found")
}

func (p *Commentidy) readRuneAt(data []byte, from int) (rune, int, error) {
	if from >= len(data) {
		return rune(0), 0, fmt.Errorf("%s", "index out of bound")
	}
	dataBuf := bytes.NewBuffer(data[from:])
	return dataBuf.ReadRune()
}

func (p *Commentidy) readRuneAtAny(data []byte, from int, runes ...rune) (rune, int, error) {
	if from >= len(data) {
		return rune(0), 0, fmt.Errorf("%s", "index out of bound")
	}
	dataBuf := bytes.NewBuffer(data[from:])
	rn, sz, err := dataBuf.ReadRune()
	if err != nil {
		return rn, sz, err
	}
	for _, r := range runes {
		if rn == r {
			return rn, sz, nil
		}
	}
	return rn, sz, fmt.Errorf("%s", "not comment char")
}

func (p *Commentidy) TidyBytes(b []byte) ([]byte, error) {
	buf := bytes.NewBuffer(b)
	scann := bufio.NewScanner(buf)
	scann.Split(func(data []byte, atEOF bool) (advance int, token []byte, err error) {
		lenData := len(data)
		if atEOF && lenData == 0 {
			return 0, nil, nil
		}
		// find slash
		if i := bytes.IndexAny(data, "/\""); i >= 0 {
			iRune, iSize, _ := p.readRuneAt(data, i)
			if iRune == '/' { // handle start with '/'
				iSlashNext := i + iSize
				nextRune, nextSize, nextError := p.readRuneAtAny(data, iSlashNext, '/', '*')
				if nextError != nil {
					return iSlashNext, data[0:iSlashNext], nil
				}
				if nextRune == '/' { //
					iSlashSlashNext := iSlashNext + nextSize
					// translate // to ///
					_, sz, err := p.readRuneAtAny(data, iSlashSlashNext, '/')
					newLinePos, _, _, _ := p.skipToAny(data, iSlashSlashNext, '\n')
					if err == nil { ///
						// skip line
						iAdvance := iSlashSlashNext + sz
						if newLinePos >= 0 {
							// find new line
							iAdvance = newLinePos
						}
						return iAdvance, data[0:iAdvance], nil
					} else { //
						// insert '/' then skip line
						buf := bytes.Buffer{}
						buf.Write(data[0:iSlashSlashNext])
						buf.WriteRune('/')
						if newLinePos >= 0 {
							//find new line
							newLinePosNext := newLinePos + 1
							if newLinePosNext > lenData {
								newLinePosNext = lenData
							}
							buf.Write(data[iSlashSlashNext:newLinePosNext])
							return newLinePosNext, buf.Bytes(), nil
						}
						return iSlashSlashNext, buf.Bytes(), nil
					}
				} else if nextRune == '*' { // /*
					// translate /* to /**
					iSlashStarNext := iSlashNext + nextSize
					_, sz, err := p.readRuneAtAny(data, iSlashStarNext, '*')
					if err == nil { // /**
						return iSlashStarNext + sz, data[0 : iSlashStarNext+sz], nil
					} else { // /*
						// insert '*'
						buf := bytes.Buffer{}
						buf.Write(data[0:iSlashStarNext])
						buf.WriteRune('*')
						//skip to '/'
					skipLoop:
						posSlashRune, _, _, err := p.skipToAny(data, iSlashStarNext, '/')
						if err == nil {
							// if find '/'
							runePrev, _, errRunePrev := p.readRuneAt(data, posSlashRune-1)
							if errRunePrev == nil && runePrev == nextRune {
								iEnd := posSlashRune + 1
								// write to iEnd
								buf.Write(data[iSlashStarNext:iEnd])
								return posSlashRune + 1, buf.Bytes(), nil
							} else {
								buf.Write(data[iSlashStarNext : posSlashRune+1])
								iSlashStarNext = posSlashRune + 1
								goto skipLoop
							}
						}
						return iSlashStarNext, buf.Bytes(), nil
					}
				} else {
					return iSlashNext + nextSize, data[0 : iSlashNext+nextSize], nil
				}
			} else {
				// skip string
				iEndQuite, _, _, _ := p.skipToAny(data, i+1, iRune)
				iAdvance := iEndQuite + 1
				if iAdvance >= lenData {
					iAdvance = lenData
				}
				return iAdvance, data[0:iAdvance], nil
			}
		}
		// If we're at EOF, we have a final, non-terminated line. Return it.
		if atEOF {
			return len(data), data, nil
		}
		// Request more data.
		return 0, nil, nil

	})
	outBuf := bytes.Buffer{}
	for scann.Scan() {
		text := scann.Text()
		_, err := outBuf.WriteString(text)
		if err != nil {
			return outBuf.Bytes(), err
		}
	}
	return outBuf.Bytes(), nil
}

func (p *Commentidy) needDoTidy(path string, exts ...string) bool {
	doTidy := false
	if !strings.HasSuffix(path, ".out.h") {
		fileExt := filepath.Ext(path)
		for _, ext := range exts {
			if ext == fileExt {
				doTidy = true
				break
			}
		}
	}
	return doTidy
}

func (p *Commentidy) TidyDir(dir string, exts ...string) error {
	return p.TidyDirWithFilter(dir, func(path string, d fs.DirEntry, err error) bool {
		return !p.needDoTidy(path, exts...)
	})
}

func (p *Commentidy) TidyDirWithFilter(dir string, fnFilter func(path string, d fs.DirEntry, err error) bool) error {
	_, err := os.Stat(dir)
	if os.IsNotExist(err) {
		return err
	}
	filepath.WalkDir(dir, func(path string, d fs.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if !d.IsDir() {
			if !fnFilter(path, d, err) {
				outBytes, _ := p.TidyFile(path)
				outFile := path + ".out.h"
				os.WriteFile(outFile, outBytes, 0644)
			}
		}
		return nil
	})
	return nil
}
