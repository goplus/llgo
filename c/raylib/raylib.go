/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package raylib

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs raylib); -lraylib"
)

// -----------------------------------------------------------------------------

// Vector2, 2 components
type Vector2 struct {
	X float32 // Vector x component
	Y float32 // Vector y component
}

// Vector3, 3 components
type Vector3 struct {
	X float32 // Vector x component
	Y float32 // Vector y component
	Z float32 // Vector z component
}

// Vector4, 4 components
type Vector4 struct {
	X float32 // Vector x component
	Y float32 // Vector y component
	Z float32 // Vector z component
	W float32 // Vector w component
}

// Quaternion, 4 components (Vector4 alias)
type Quaternion = Vector4

// -----------------------------------------------------------------------------
// Window-related functions

//go:linkname InitWindow C.InitWindow
func InitWindow(width, height c.Int, title *c.Char)

//go:linkname CloseWindow C.CloseWindow
func CloseWindow()

//go:linkname WindowShouldClose C.WindowShouldClose
func WindowShouldClose() bool

//go:linkname IsWindowReady C.IsWindowReady
func IsWindowReady() bool

//go:linkname IsWindowFullscreen C.IsWindowFullscreen
func IsWindowFullscreen() bool

//go:linkname IsWindowHidden C.IsWindowHidden
func IsWindowHidden() bool

//go:linkname IsWindowMinimized C.IsWindowMinimized
func IsWindowMinimized() bool

//go:linkname IsWindowMaximized C.IsWindowMaximized
func IsWindowMaximized() bool

//go:linkname IsWindowFocused C.IsWindowFocused
func IsWindowFocused() bool

//go:linkname IsWindowResized C.IsWindowResized
func IsWindowResized() bool

//go:linkname IsWindowState C.IsWindowState
func IsWindowState(flag c.Int) bool

//go:linkname SetWindowState C.SetWindowState
func SetWindowState(flags c.Int)

//go:linkname ClearWindowState C.ClearWindowState
func ClearWindowState(flags c.Int)

//go:linkname ToggleFullscreen C.ToggleFullscreen
func ToggleFullscreen()

//go:linkname MaximizeWindow C.MaximizeWindow
func MaximizeWindow()

//go:linkname MinimizeWindow C.MinimizeWindow
func MinimizeWindow()

//go:linkname RestoreWindow C.RestoreWindow
func RestoreWindow()

//go:linkname SetWindowIcon C.SetWindowIcon
func SetWindowIcon(icon Image)

//go:linkname SetWindowIcons C.SetWindowIcons
func SetWindowIcons(icons *Image, count c.Int)

//go:linkname SetWindowTitle C.SetWindowTitle
func SetWindowTitle(title *c.Char)

//go:linkname SetWindowPosition C.SetWindowPosition
func SetWindowPosition(x, y c.Int)

//go:linkname SetWindowMonitor C.SetWindowMonitor
func SetWindowMonitor(monitor c.Int)

//go:linkname SetWindowMinSize C.SetWindowMinSize
func SetWindowMinSize(width, height c.Int)

//go:linkname SetWindowSize C.SetWindowSize
func SetWindowSize(width, height c.Int)

//go:linkname SetWindowOpacity C.SetWindowOpacity
func SetWindowOpacity(opacity c.Float)

//go:linkname SetWindowFocused C.SetWindowFocused
func SetWindowFocused()

//go:linkname GetWindowHandle C.GetWindowHandle
func GetWindowHandle() c.Pointer

//go:linkname GetScreenWidth C.GetScreenWidth
func GetScreenWidth() c.Int

//go:linkname GetScreenHeight C.GetScreenHeight
func GetScreenHeight() c.Int

// Get current render width (it considers HiDPI)
//
//go:linkname GetRenderWidth C.GetRenderWidth
func GetRenderWidth() c.Int

// Get current render height (it considers HiDPI)
//
//go:linkname GetRenderHeight C.GetRenderHeight
func GetRenderHeight() c.Int

// Get number of connected monitors
//
//go:linkname GetMonitorCount C.GetMonitorCount
func GetMonitorCount() c.Int

// Get current connected monitor
//
//go:linkname GetCurrentMonitor C.GetCurrentMonitor
func GetCurrentMonitor() c.Int

// Get specified monitor position
//
//go:linkname GetMonitorPosition C.GetMonitorPosition
func GetMonitorPosition(monitor c.Int) Vector2

//go:linkname GetMonitorWidth C.GetMonitorWidth
func GetMonitorWidth(monitor c.Int) c.Int

//go:linkname GetMonitorHeight C.GetMonitorHeight
func GetMonitorHeight(monitor c.Int) c.Int

//go:linkname GetMonitorPhysicalWidth C.GetMonitorPhysicalWidth
func GetMonitorPhysicalWidth(monitor c.Int) c.Int

//go:linkname GetMonitorPhysicalHeight C.GetMonitorPhysicalHeight
func GetMonitorPhysicalHeight(monitor c.Int) c.Int

//go:linkname GetMonitorRefreshRate C.GetMonitorRefreshRate
func GetMonitorRefreshRate(monitor c.Int) c.Int

//go:linkname GetWindowPosition C.GetWindowPosition
func GetWindowPosition() Vector2

//go:linkname GetWindowScaleDPI C.GetWindowScaleDPI
func GetWindowScaleDPI() Vector2

//go:linkname GetMonitorName C.GetMonitorName
func GetMonitorName(monitor c.Int) *c.Char

//go:linkname SetClipboardText C.SetClipboardText
func SetClipboardText(text *c.Char)

//go:linkname GetClipboardText C.GetClipboardText
func GetClipboardText() *c.Char

// Enable waiting for events on EndDrawing(), no automatic event polling
//
//go:linkname EnableEventWaiting C.EnableEventWaiting
func EnableEventWaiting()

// Disable waiting for events on EndDrawing(), automatic events polling
//
//go:linkname DisableEventWaiting C.DisableEventWaiting
func DisableEventWaiting()

// -----------------------------------------------------------------------------
// Cursor-related functions

//go:linkname ShowCursor C.ShowCursor
func ShowCursor()

//go:linkname HideCursor C.HideCursor
func HideCursor()

//go:linkname IsCursorHidden C.IsCursorHidden
func IsCursorHidden() bool

//go:linkname EnableCursor C.EnableCursor
func EnableCursor()

//go:linkname DisableCursor C.DisableCursor
func DisableCursor()

//go:linkname IsCursorOnScreen C.IsCursorOnScreen
func IsCursorOnScreen() bool

// -----------------------------------------------------------------------------
// Shader management functions

// -----------------------------------------------------------------------------
// Screen-space-related functions

// -----------------------------------------------------------------------------
// Timing-related functions

// Set target FPS (maximum)
//
//go:linkname SetTargetFPS C.SetTargetFPS
func SetTargetFPS(fps c.Int)

// Returns current FPS
//
//go:linkname GetFPS C.GetFPS
func GetFPS() c.Int

// Returns time in seconds for last frame drawn (delta time)
//
//go:linkname GetFrameTime C.GetFrameTime
func GetFrameTime() c.Float

// Returns elapsed time in seconds since InitWindow()
//
//go:linkname GetTime C.GetTime
func GetTime() c.Double

// -----------------------------------------------------------------------------
// Custom frame control functions

// NOTE: Those functions are intended for advance users that want full control over the frame processing
// By default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timing + PollInputEvents()
// To avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL

// -----------------------------------------------------------------------------
// Random values generation functions

// -----------------------------------------------------------------------------
// Misc. functions

// -----------------------------------------------------------------------------
// Input-related functions: keyboard

// -----------------------------------------------------------------------------
// Input-related functions: gamepads

// -----------------------------------------------------------------------------
// Input-related functions: mouse

// -----------------------------------------------------------------------------
// Input-related functions: touch

// -----------------------------------------------------------------------------
// Gestures and Touch Handling Functions (Module: rgestures)

// -----------------------------------------------------------------------------
