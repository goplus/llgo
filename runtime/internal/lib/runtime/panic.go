package runtime

import "unsafe"

func (p *_panic) nextDefer() (func(), bool) {
	panic("todo: nextDefer")
}

func (p *_panic) start(pc uintptr, sp unsafe.Pointer) {
	panic("todo: start")
}

func acquirem() *m {
	panic("todo: acquirem")
}

type Pinner struct{}

func (p *Pinner) Pin(pointer any) {
	panic("todo: Pin")
}

func (p Pinner) unpin() {
	panic("todo: unpin")
}

func (p *Pinner) Unpin() {
	panic("todo: Unpin")
}

func chansend(c *hchan, ep unsafe.Pointer, block bool, callerpc uintptr) bool {
	panic("todo: chansend")
}

func chanrecv(c *hchan, ep unsafe.Pointer, block bool) (selected, received bool) {
	panic("todo: chanrecv")
}

func sigpanic() {
	panic("todo: sigpanic")
}

func dopanic_m(gp *g, pc, sp uintptr) bool {
	panic("todo: dopanic_m")
}

type throwType uint32

func fatalthrow(t throwType) {
	panic("todo: fatalthrow")
}

func shouldPushSigpanic(gp *g, pc, lr uintptr) bool
