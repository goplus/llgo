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

// Color, 4 components, R8G8B8A8 (32bit)
// R, G, B, A uint8
type Color uint32

const (
	LIGHTGRAY = Color(200 | 200<<8 | 200<<16 | 255<<24) // Light Gray
	GRAY      = Color(130 | 130<<8 | 130<<16 | 255<<24) // Gray
	DARKGRAY  = Color(80 | 80<<8 | 80<<16 | 255<<24)    // Dark Gray
	YELLOW    = Color(253 | 249<<8 | 0<<16 | 255<<24)   // Yellow
	GOLD      = Color(255 | 203<<8 | 0<<16 | 255<<24)   // Gold
	ORANGE    = Color(255 | 161<<8 | 0<<16 | 255<<24)   // Orange
	PINK      = Color(255 | 109<<8 | 194<<16 | 255<<24) // Pink
	RED       = Color(230 | 41<<8 | 55<<16 | 255<<24)   // Red
	MAROON    = Color(190 | 33<<8 | 55<<16 | 255<<24)   // Maroon
	GREEN     = Color(0 | 228<<8 | 48<<16 | 255<<24)    // Green
	LIME      = Color(0 | 158<<8 | 47<<16 | 255<<24)    // Lime
	DARKGREEN = Color(0 | 117<<8 | 44<<16 | 255<<24)    // Dark Green
	SKYBLUE   = Color(102 | 191<<8 | 255<<16 | 255<<24) // Sky Blue
	BLUE      = Color(0 | 121<<8 | 241<<16 | 255<<24)   // Blue

	DARKBLUE   = Color(0 | 82<<8 | 172<<16 | 255<<24)    // Dark Blue
	PURPLE     = Color(200 | 122<<8 | 255<<16 | 255<<24) // Purple
	VIOLET     = Color(135 | 60<<8 | 190<<16 | 255<<24)  // Violet
	DARKPURPLE = Color(112 | 31<<8 | 126<<16 | 255<<24)  // Dark Purple
	BEIGE      = Color(211 | 176<<8 | 131<<16 | 255<<24) // Beige
	BROWN      = Color(127 | 106<<8 | 79<<16 | 255<<24)  // Brown
	DARKBROWN  = Color(76 | 63<<8 | 47<<16 | 255<<24)    // Dark Brown

	WHITE    = Color(255 | 255<<8 | 255<<16 | 255<<24) // White
	BLACK    = Color(0 | 0<<8 | 0<<16 | 255<<24)       // Black
	BLANK    = Color(0 | 0<<8 | 0<<16 | 0<<24)         // Blank (Transparent)
	MAGENTA  = Color(255 | 0<<8 | 255<<16 | 255<<24)   // Magenta
	RAYWHITE = Color(245 | 245<<8 | 245<<16 | 255<<24) // My own White (raylib logo)
)

// Image, pixel data stored in CPU memory (RAM)
type Image struct {
	Data    c.Pointer // Image raw data
	Width   c.Int     // Image base width
	Height  c.Int     // Image base height
	Mipmaps c.Int     // Mipmap levels, 1 by default
	Format  c.Int     // Data format (PixelFormat type)
}

// Camera, defines position/orientation in 3d space
type Camera3D struct {
	Position   Vector3 // Camera position
	Target     Vector3 // Camera target it looks-at
	Up         Vector3 // Camera up vector (rotation over its axis)
	Fovy       float32 // Camera field-of-view aperture in Y (degrees) in perspective, used as near plane width in orthographic
	Projection c.Int   // Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC
}

type Camera = Camera3D // Camera type fallback, defaults to Camera3D

// Camera2D, defines position/orientation in 2d space
type Camera2D struct {
	Offset   Vector2 // Camera offset (displacement from target)
	Target   Vector2 // Camera target (rotation and zoom origin)
	Rotation float32 // Camera rotation in degrees
	Zoom     float32 // Camera zoom (scaling), should be 1.0f by default
}

// -----------------------------------------------------------------------------

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

// Set background color (framebuffer clear color)
//
//go:linkname ClearBackground C.ClearBackground
func ClearBackground(color Color)

//go:linkname BeginDrawing C.BeginDrawing
func BeginDrawing()

//go:linkname EndDrawing C.EndDrawing
func EndDrawing()

//go:linkname BeginMode2D C.BeginMode2D
func BeginMode2D(camera Camera2D)

//go:linkname EndMode2D C.EndMode2D
func EndMode2D()

//go:linkname BeginMode3D C.BeginMode3D
func BeginMode3D(camera Camera3D)

//go:linkname EndMode3D C.EndMode3D
func EndMode3D()

//-go:linkname BeginTextureMode C.BeginTextureMode
//func BeginTextureMode(target RenderTexture2D)

//go:linkname EndTextureMode C.EndTextureMode
func EndTextureMode()

//go:linkname BeginScissorMode C.BeginScissorMode
func BeginScissorMode(x, y, width, height c.Int)

//go:linkname EndScissorMode C.EndScissorMode
func EndScissorMode()

// -----------------------------------------------------------------------------

// Draw a color-filled rectangle
//
//go:linkname DrawRectangle C.DrawRectangle
func DrawRectangle(posX, posY, width, height c.Int, color Color)

// -----------------------------------------------------------------------------
