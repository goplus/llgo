//go:build windows && (nogc || baremetal)

package sync

const LLGoFiles = "_wrap/sync_windows.c"
