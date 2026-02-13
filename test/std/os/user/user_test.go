package user_test

import (
	"os/user"
	"runtime"
	"testing"
)

func TestCurrent(t *testing.T) {
	u, err := user.Current()
	if err != nil {
		t.Fatalf("Current error: %v", err)
	}

	if u == nil {
		t.Fatal("Current returned nil user")
	}

	if u.Uid == "" {
		t.Error("User Uid is empty")
	}

	if u.Username == "" {
		t.Error("User Username is empty")
	}
}

func TestLookup(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	u, err := user.Lookup("root")
	if err != nil {
		t.Skipf("Lookup(root) error: %v", err)
	}

	if u == nil {
		t.Fatal("Lookup returned nil user")
	}

	if u.Uid != "0" {
		t.Errorf("root Uid = %q, want %q", u.Uid, "0")
	}

	if u.Username != "root" {
		t.Errorf("root Username = %q, want %q", u.Username, "root")
	}
}

func TestLookupNonexistent(t *testing.T) {
	_, err := user.Lookup("nonexistent_user_12345")
	if err == nil {
		t.Error("Expected error for nonexistent user")
	}

	_, ok := err.(user.UnknownUserError)
	if !ok {
		t.Errorf("Error type = %T, want UnknownUserError", err)
	}
}

func TestLookupId(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	u, err := user.LookupId("0")
	if err != nil {
		t.Skipf("LookupId(0) error: %v", err)
	}

	if u == nil {
		t.Fatal("LookupId returned nil user")
	}

	if u.Uid != "0" {
		t.Errorf("User Uid = %q, want %q", u.Uid, "0")
	}
}

func TestLookupIdNonexistent(t *testing.T) {
	_, err := user.LookupId("99999999")
	if err == nil {
		t.Error("Expected error for nonexistent uid")
	}

	_, ok := err.(user.UnknownUserIdError)
	if !ok {
		t.Errorf("Error type = %T, want UnknownUserIdError", err)
	}
}

func TestUserGroupIds(t *testing.T) {
	u, err := user.Current()
	if err != nil {
		t.Fatalf("Current error: %v", err)
	}

	gids, err := u.GroupIds()
	if err != nil {
		t.Skipf("GroupIds error: %v", err)
	}

	if len(gids) == 0 {
		t.Error("GroupIds returned empty slice")
	}
}

func TestLookupGroup(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	g, err := user.LookupGroup("root")
	if err != nil {
		t.Skipf("LookupGroup(root) error: %v", err)
	}

	if g == nil {
		t.Fatal("LookupGroup returned nil group")
	}

	if g.Gid == "" {
		t.Error("Group Gid is empty")
	}

	if g.Name != "root" {
		t.Errorf("Group Name = %q, want %q", g.Name, "root")
	}
}

func TestLookupGroupNonexistent(t *testing.T) {
	_, err := user.LookupGroup("nonexistent_group_12345")
	if err == nil {
		t.Error("Expected error for nonexistent group")
	}

	_, ok := err.(user.UnknownGroupError)
	if !ok {
		t.Errorf("Error type = %T, want UnknownGroupError", err)
	}
}

func TestLookupGroupId(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	g, err := user.LookupGroupId("0")
	if err != nil {
		t.Skipf("LookupGroupId(0) error: %v", err)
	}

	if g == nil {
		t.Fatal("LookupGroupId returned nil group")
	}

	if g.Gid != "0" {
		t.Errorf("Group Gid = %q, want %q", g.Gid, "0")
	}
}

func TestLookupGroupIdNonexistent(t *testing.T) {
	_, err := user.LookupGroupId("99999999")
	if err == nil {
		t.Error("Expected error for nonexistent gid")
	}

	_, ok := err.(user.UnknownGroupIdError)
	if !ok {
		t.Errorf("Error type = %T, want UnknownGroupIdError", err)
	}
}

func TestUserFields(t *testing.T) {
	u, err := user.Current()
	if err != nil {
		t.Fatalf("Current error: %v", err)
	}

	if u.Uid == "" {
		t.Error("User.Uid is empty")
	}
	if u.Gid == "" {
		t.Error("User.Gid is empty")
	}
	if u.Username == "" {
		t.Error("User.Username is empty")
	}
}

func TestGroupFields(t *testing.T) {
	if runtime.GOOS == "windows" {
		t.Skip("Skipping on Windows")
	}

	g, err := user.LookupGroup("root")
	if err != nil {
		t.Skipf("LookupGroup error: %v", err)
	}

	if g.Gid == "" {
		t.Error("Group.Gid is empty")
	}
	if g.Name == "" {
		t.Error("Group.Name is empty")
	}

	var _ *user.Group = g
}

func TestUnknownUserError(t *testing.T) {
	err := user.UnknownUserError("testuser")
	errStr := err.Error()
	if errStr == "" {
		t.Error("UnknownUserError.Error() returned empty string")
	}
}

func TestUnknownUserIdError(t *testing.T) {
	err := user.UnknownUserIdError(12345)
	errStr := err.Error()
	if errStr == "" {
		t.Error("UnknownUserIdError.Error() returned empty string")
	}
}

func TestUnknownGroupError(t *testing.T) {
	err := user.UnknownGroupError("testgroup")
	errStr := err.Error()
	if errStr == "" {
		t.Error("UnknownGroupError.Error() returned empty string")
	}
}

func TestUnknownGroupIdError(t *testing.T) {
	err := user.UnknownGroupIdError("12345")
	errStr := err.Error()
	if errStr == "" {
		t.Error("UnknownGroupIdError.Error() returned empty string")
	}
}
