package syslog_test

import (
	"log/syslog"
	"testing"
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

	_ = (*syslog.Writer).Alert
	_ = (*syslog.Writer).Close
	_ = (*syslog.Writer).Crit
	_ = (*syslog.Writer).Debug
	_ = (*syslog.Writer).Emerg
	_ = (*syslog.Writer).Err
	_ = (*syslog.Writer).Info
	_ = (*syslog.Writer).Notice
	_ = (*syslog.Writer).Warning
	_ = (*syslog.Writer).Write
}
