package syslog_test

import (
	"log/syslog"
	"net"
	"testing"
	"time"
)

func TestPriorityConstants(t *testing.T) {
	severities := []syslog.Priority{
		syslog.LOG_EMERG,
		syslog.LOG_ALERT,
		syslog.LOG_CRIT,
		syslog.LOG_ERR,
		syslog.LOG_WARNING,
		syslog.LOG_NOTICE,
		syslog.LOG_INFO,
		syslog.LOG_DEBUG,
	}
	for i, p := range severities {
		if int(p) != i {
			t.Fatalf("severity %d = %d, want %d", i, p, i)
		}
	}

	facilities := []syslog.Priority{
		syslog.LOG_KERN,
		syslog.LOG_USER,
		syslog.LOG_MAIL,
		syslog.LOG_DAEMON,
		syslog.LOG_AUTH,
		syslog.LOG_SYSLOG,
		syslog.LOG_LPR,
		syslog.LOG_NEWS,
		syslog.LOG_UUCP,
		syslog.LOG_CRON,
		syslog.LOG_AUTHPRIV,
		syslog.LOG_FTP,
		syslog.LOG_LOCAL0,
		syslog.LOG_LOCAL1,
		syslog.LOG_LOCAL2,
		syslog.LOG_LOCAL3,
		syslog.LOG_LOCAL4,
		syslog.LOG_LOCAL5,
		syslog.LOG_LOCAL6,
		syslog.LOG_LOCAL7,
	}
	for i, p := range facilities {
		if i > 0 && p <= facilities[i-1] {
			t.Fatalf("facility constants must be increasing: %d <= %d", p, facilities[i-1])
		}
	}

	pri := syslog.LOG_LOCAL0 | syslog.LOG_INFO
	if pri == 0 {
		t.Fatal("combined priority should not be zero")
	}
}

func TestPublicAPISymbols(t *testing.T) {
	_ = syslog.NewLogger
	_ = syslog.Dial
	_ = syslog.New
}

func TestWriterMethodsOverUDP(t *testing.T) {
	pc, err := net.ListenPacket("udp", "127.0.0.1:0")
	if err != nil {
		t.Fatalf("ListenPacket: %v", err)
	}
	defer pc.Close()

	const wantMessages = 9
	recvDone := make(chan int, 1)
	go func() {
		if err := pc.SetReadDeadline(time.Now().Add(2 * time.Second)); err != nil {
			recvDone <- 0
			return
		}
		buf := make([]byte, 2048)
		count := 0
		for count < wantMessages {
			n, _, err := pc.ReadFrom(buf)
			if err != nil {
				break
			}
			if n > 0 {
				count++
			}
		}
		recvDone <- count
	}()

	w, err := syslog.Dial("udp", pc.LocalAddr().String(), syslog.LOG_INFO|syslog.LOG_LOCAL0, "llgo-test")
	if err != nil {
		t.Fatalf("Dial: %v", err)
	}
	if err := w.Alert("alert"); err != nil {
		t.Fatalf("Alert: %v", err)
	}
	if err := w.Crit("crit"); err != nil {
		t.Fatalf("Crit: %v", err)
	}
	if err := w.Debug("debug"); err != nil {
		t.Fatalf("Debug: %v", err)
	}
	if err := w.Emerg("emerg"); err != nil {
		t.Fatalf("Emerg: %v", err)
	}
	if err := w.Err("err"); err != nil {
		t.Fatalf("Err: %v", err)
	}
	if err := w.Info("info"); err != nil {
		t.Fatalf("Info: %v", err)
	}
	if err := w.Notice("notice"); err != nil {
		t.Fatalf("Notice: %v", err)
	}
	if err := w.Warning("warning"); err != nil {
		t.Fatalf("Warning: %v", err)
	}
	if _, err := w.Write([]byte("write")); err != nil {
		t.Fatalf("Write: %v", err)
	}
	if err := w.Close(); err != nil {
		t.Fatalf("Close: %v", err)
	}

	got := <-recvDone
	if got < wantMessages {
		t.Fatalf("received %d syslog datagrams, want at least %d", got, wantMessages)
	}
}
