package time

import "unsafe"

type Ticker struct {
	C <-chan Time // The channel on which the ticks are delivered.
}

func NewTicker(d Duration) *Ticker {
	if d <= 0 {
		panic("non-positive interval for NewTicker")
	}
	c := make(chan Time, 1)
	t := &Timer{C: c}
	t.C = c
	startTimer(&t.r)
	return (*Ticker)(unsafe.Pointer(t))
}

func (t *Ticker) Stop() {
	stopTimer(&(*Timer)(unsafe.Pointer(t)).r)
}

func (t *Ticker) Reset(d Duration) {
	if d <= 0 {
		panic("non-positive interval for Ticker.Reset")
	}
	resetTimer(&(*Timer)(unsafe.Pointer(t)).r, when(d))
}

func Tick(d Duration) <-chan Time {
	if d <= 0 {
		return nil
	}
	return NewTicker(d).C
}
