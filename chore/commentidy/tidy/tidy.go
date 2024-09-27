package tidy

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
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

func (p *Commentidy) skipString(data []byte, from int, q rune) int {
	dataBuf := bytes.NewBuffer(data[from:])
	index := from
	for {
		rn, sz, err := dataBuf.ReadRune()
		if err != nil {
			break
		}
		if q == rn {
			break
		}
		index = index + sz
	}
	return index
}

func (p *Commentidy) readRuneAt(data []byte, from int) (rune, int, error) {
	dataBuf := bytes.NewBuffer(data[from:])
	return dataBuf.ReadRune()
}

func (p *Commentidy) readRuneAtAny(data []byte, from int, runes []rune) (rune, int, error) {
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
		if atEOF && len(data) == 0 {
			return 0, nil, nil
		}
		// find slash
		if i := bytes.IndexAny(data, "/\""); i >= 0 {
			iRune, iSize, _ := p.readRuneAt(data, i)
			if iRune == '/' { // handle start with '/'
				iSlashNext := i + iSize
				nextRune, nextSize, nextError := p.readRuneAtAny(data, iSlashNext, []rune{'/', '*'})
				if nextError != nil {
					return iSlashNext, data[0:iSlashNext], nil
				}
				if nextRune == '/' { //
					iSlashSlashNext := iSlashNext + nextSize
					// 1. translate // to ///
					_, sz, err := p.readRuneAtAny(data, iSlashSlashNext, []rune{'/'})
					if err == nil { ///
						return iSlashSlashNext + sz, data[0 : iSlashSlashNext+sz], nil
					} else { //
						buf := bytes.Buffer{}
						buf.Write(data[0:iSlashSlashNext])
						buf.WriteRune('/')
						return iSlashSlashNext, buf.Bytes(), nil
					}
				} else if nextRune == '*' { // /*
					// 2. translate /* to /**
					iSlashStarNext := iSlashNext + nextSize
					_, sz, err := p.readRuneAtAny(data, iSlashStarNext, []rune{'*'})
					if err == nil { // /**
						return iSlashStarNext + sz, data[0 : iSlashStarNext+sz], nil
					} else { // /*
						buf := bytes.Buffer{}
						buf.Write(data[0:iSlashStarNext])
						buf.WriteRune('*')
						return iSlashStarNext, buf.Bytes(), nil
					}
				} else {
					return iSlashNext + nextSize, data[0 : iSlashNext+nextSize], nil
				}
			} else {
				// skip string
				iEndQuite := p.skipString(data, i+1, iRune)
				return iEndQuite + 1, data[0 : iEndQuite+1], nil
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
