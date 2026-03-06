package expvar_test

import (
	"expvar"
	"fmt"
	"math"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
)

var uniqueID int

func uniqueName(prefix string) string {
	uniqueID++
	return fmt.Sprintf("llgo_expvar_%s_%d", prefix, uniqueID)
}

func stringify(v expvar.Var) string {
	return v.String()
}

func TestIntFloatStringVars(t *testing.T) {
	intName := uniqueName("int")
	iv := expvar.NewInt(intName)
	iv.Set(10)
	iv.Add(5)
	if got := iv.Value(); got != 15 {
		t.Fatalf("Int.Value = %d, want 15", got)
	}
	if got := iv.String(); got == "" {
		t.Fatalf("Int.String returned empty value")
	}
	if got := stringify(iv); got == "" {
		t.Fatalf("Int.String returned empty value")
	}
	if got := expvar.Get(intName); got != iv {
		t.Fatalf("Get(%q) did not return created Int var", intName)
	}

	floatName := uniqueName("float")
	fv := expvar.NewFloat(floatName)
	fv.Set(1.25)
	fv.Add(2.5)
	if got := fv.Value(); math.Abs(got-3.75) > 1e-9 {
		t.Fatalf("Float.Value = %f, want 3.75", got)
	}
	if got := fv.String(); got == "" {
		t.Fatalf("Float.String returned empty value")
	}

	stringName := uniqueName("string")
	sv := expvar.NewString(stringName)
	sv.Set("hello")
	if got := sv.Value(); got != "hello" {
		t.Fatalf("String.Value = %q, want %q", got, "hello")
	}
	if got := sv.String(); got != `"hello"` {
		t.Fatalf("String.String = %q, want %q", got, `"hello"`)
	}
}

func TestMapAndKeyValue(t *testing.T) {
	name := uniqueName("map")
	m := expvar.NewMap(name).Init()

	m.Add("count", 2)
	m.Add("count", 3)
	v, ok := m.Get("count").(*expvar.Int)
	if !ok || v.Value() != 5 {
		t.Fatalf("Map count = %v, want 5", m.Get("count"))
	}

	m.AddFloat("pi", 3)
	fv, ok := m.Get("pi").(*expvar.Float)
	if !ok || math.Abs(fv.Value()-3) > 1e-9 {
		t.Fatalf("Map pi = %v, want 3", m.Get("pi"))
	}

	m.Set("msg", expvar.Func(func() any { return "ok" }))
	found := map[string]bool{}
	m.Do(func(kv expvar.KeyValue) {
		found[kv.Key] = true
		if kv.Value == nil {
			t.Fatalf("KeyValue %q has nil value", kv.Key)
		}
	})
	for _, k := range []string{"count", "pi", "msg"} {
		if !found[k] {
			t.Fatalf("Map.Do missing key %q", k)
		}
	}

	m.Delete("count")
	if got := m.Get("count"); got != nil {
		t.Fatalf("Map.Get(count) = %v, want nil after Delete", got)
	}
	if got := m.String(); got == "" {
		t.Fatalf("Map.String returned empty value")
	}
}

func TestPublishGetDoAndFunc(t *testing.T) {
	name := uniqueName("func")
	f := expvar.Func(func() any {
		return map[string]any{"ok": true, "n": 3}
	})
	expvar.Publish(name, f)
	if got := expvar.Get(name); got == nil {
		t.Fatalf("Get(%q) returned nil", name)
	}
	if !strings.Contains(f.String(), `"ok":true`) {
		t.Fatalf("Func.String = %q, missing expected JSON field", f.String())
	}
	if got := f.Value().(map[string]any)["n"]; got != 3 {
		t.Fatalf("Func.Value()[\"n\"] = %v, want 3", got)
	}

	seen := false
	expvar.Do(func(kv expvar.KeyValue) {
		if kv.Key == name {
			seen = true
		}
	})
	if !seen {
		t.Fatalf("expvar.Do did not include published key %q", name)
	}
}

func TestHandler(t *testing.T) {
	h := expvar.Handler()
	if h == nil {
		t.Fatalf("Handler returned nil")
	}

	rr := httptest.NewRecorder()
	req := httptest.NewRequest(http.MethodGet, "/debug/vars", nil)
	h.ServeHTTP(rr, req)
	if rr.Code != http.StatusOK {
		t.Fatalf("GET /debug/vars status = %d, want %d", rr.Code, http.StatusOK)
	}

	rr = httptest.NewRecorder()
	req = httptest.NewRequest(http.MethodPost, "/debug/vars", nil)
	h.ServeHTTP(rr, req)
	if rr.Code != http.StatusMethodNotAllowed && rr.Code != http.StatusOK {
		t.Fatalf("POST /debug/vars status = %d, want 200 or 405", rr.Code)
	}
}
