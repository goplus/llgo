package build

import (
	stdcontext "context"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
	"time"
)

func TestNativeChannelSignalLifetime(t *testing.T) {
	// Darwin calls pthreadCondWait directly; Linux's GC wrapper waits from C
	// and would need a separate interception point.
	if runtime.GOOS != "darwin" {
		t.Skip("requires the Darwin pthread wait path")
	}
	if testing.Short() {
		t.Skip("builds and runs a native channel probe")
	}
	root, err := filepath.Abs("../..")
	if err != nil {
		t.Fatal(err)
	}
	t.Setenv("LLGO_ROOT", root)

	// Redirect only the pthread boundary in this test build. The channel
	// implementation and its wait/finish/cleanup paths remain unmodified.
	file := filepath.Join(root, "runtime/internal/sync/sync_unix.go")
	source, err := os.ReadFile(file)
	if err != nil {
		t.Fatal(err)
	}
	patched := string(source)
	for _, op := range []string{"wait", "signal", "destroy"} {
		name := "C.pthread_cond_" + op
		if strings.Count(patched, name) != 1 {
			t.Fatalf("expected one binding for %s", name)
		}
		patched = strings.Replace(patched, name, "C.llgo_lifetime_cond_"+op, 1)
	}
	conf := NewDefaultConf(ModeBuild)
	conf.Overlay = map[string][]byte{file: []byte(patched)}
	conf.OutFile = filepath.Join(t.TempDir(), "channel-lifetime")
	if _, err := Do([]string{"./testdata/native-channel-lifetime"}, conf); err != nil {
		t.Fatal(err)
	}
	for _, scenario := range []string{"recv", "send", "close-recv", "close-send"} {
		t.Run(scenario, func(t *testing.T) {
			ctx, cancel := stdcontext.WithTimeout(t.Context(), 30*time.Second)
			defer cancel()
			out, err := exec.CommandContext(ctx, conf.OutFile, scenario).CombinedOutput()
			if err != nil {
				t.Fatalf("channel lifetime probe: %v (context: %v)\n%s", err, ctx.Err(), out)
			}
			if strings.TrimSpace(string(out)) != "channel signal lifetime ok" {
				t.Fatalf("probe did not complete its lifetime check: %s", out)
			}
		})
	}
}
