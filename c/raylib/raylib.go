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

//----------------------------------------------------------------------------------
// Enumerators Definition

// System/Window config flags
// By default all flags are set to 0

// Trace log level

// Keyboard keys (US keyboard layout)
// required keys for alternative layouts
const (
	KEY_NULL = 0 // Key: NULL, used for no key pressed

	// Alphanumeric keys
	KEY_APOSTROPHE    = 39 // Key: '
	KEY_COMMA         = 44 // Key: ,
	KEY_MINUS         = 45 // Key: -
	KEY_PERIOD        = 46 // Key: .
	KEY_SLASH         = 47 // Key: /
	KEY_ZERO          = 48 // Key: 0
	KEY_ONE           = 49 // Key: 1
	KEY_TWO           = 50 // Key: 2
	KEY_THREE         = 51 // Key: 3
	KEY_FOUR          = 52 // Key: 4
	KEY_FIVE          = 53 // Key: 5
	KEY_SIX           = 54 // Key: 6
	KEY_SEVEN         = 55 // Key: 7
	KEY_EIGHT         = 56 // Key: 8
	KEY_NINE          = 57 // Key: 9
	KEY_SEMICOLON     = 59 // Key: ;
	KEY_EQUAL         = 61 // Key: =
	KEY_A             = 65 // Key: A | a
	KEY_B             = 66 // Key: B | b
	KEY_C             = 67 // Key: C | c
	KEY_D             = 68 // Key: D | d
	KEY_E             = 69 // Key: E | e
	KEY_F             = 70 // Key: F | f
	KEY_G             = 71 // Key: G | g
	KEY_H             = 72 // Key: H | h
	KEY_I             = 73 // Key: I | i
	KEY_J             = 74 // Key: J | j
	KEY_K             = 75 // Key: K | k
	KEY_L             = 76 // Key: L | l
	KEY_M             = 77 // Key: M | m
	KEY_N             = 78 // Key: N | n
	KEY_O             = 79 // Key: O | o
	KEY_P             = 80 // Key: P | p
	KEY_Q             = 81 // Key: Q | q
	KEY_R             = 82 // Key: R | r
	KEY_S             = 83 // Key: S | s
	KEY_T             = 84 // Key: T | t
	KEY_U             = 85 // Key: U | u
	KEY_V             = 86 // Key: V | v
	KEY_W             = 87 // Key: W | w
	KEY_X             = 88 // Key: X | x
	KEY_Y             = 89 // Key: Y | y
	KEY_Z             = 90 // Key: Z | z
	KEY_LEFT_BRACKET  = 91 // Key: [
	KEY_BACKSLASH     = 92 // Key: '\'
	KEY_RIGHT_BRACKET = 93 // Key: ]
	KEY_GRAVE         = 96 // Key: `

	// Function keys
	KEY_SPACE         = 32  // Key: Space
	KEY_ESCAPE        = 256 // Key: Esc
	KEY_ENTER         = 257 // Key: Enter
	KEY_TAB           = 258 // Key: Tab
	KEY_BACKSPACE     = 259 // Key: Backspace
	KEY_INSERT        = 260 // Key: Ins
	KEY_DELETE        = 261 // Key: Del
	KEY_RIGHT         = 262 // Key: Cursor right
	KEY_LEFT          = 263 // Key: Cursor left
	KEY_DOWN          = 264 // Key: Cursor down
	KEY_UP            = 265 // Key: Cursor up
	KEY_PAGE_UP       = 266 // Key: Page up
	KEY_PAGE_DOWN     = 267 // Key: Page down
	KEY_HOME          = 268 // Key: Home
	KEY_END           = 269 // Key: End
	KEY_CAPS_LOCK     = 280 // Key: Caps lock
	KEY_SCROLL_LOCK   = 281 // Key: Scroll down
	KEY_NUM_LOCK      = 282 // Key: Num lock
	KEY_PRINT_SCREEN  = 283 // Key: Print screen
	KEY_PAUSE         = 284 // Key: Pause
	KEY_F1            = 290 // Key: F1
	KEY_F2            = 291 // Key: F2
	KEY_F3            = 292 // Key: F3
	KEY_F4            = 293 // Key: F4
	KEY_F5            = 294 // Key: F5
	KEY_F6            = 295 // Key: F6
	KEY_F7            = 296 // Key: F7
	KEY_F8            = 297 // Key: F8
	KEY_F9            = 298 // Key: F9
	KEY_F10           = 299 // Key: F10
	KEY_F11           = 300 // Key: F11
	KEY_F12           = 301 // Key: F12
	KEY_LEFT_SHIFT    = 340 // Key: Shift left
	KEY_LEFT_CONTROL  = 341 // Key: Control left
	KEY_LEFT_ALT      = 342 // Key: Alt left
	KEY_LEFT_SUPER    = 343 // Key: Super left
	KEY_RIGHT_SHIFT   = 344 // Key: Shift right
	KEY_RIGHT_CONTROL = 345 // Key: Control right
	KEY_RIGHT_ALT     = 346 // Key: Alt right
	KEY_RIGHT_SUPER   = 347 // Key: Super right
	KEY_KB_MENU       = 348 // Key: KB menu

	// Keypad keys
	KEY_KP_0        = 320 // Key: Keypad 0
	KEY_KP_1        = 321 // Key: Keypad 1
	KEY_KP_2        = 322 // Key: Keypad 2
	KEY_KP_3        = 323 // Key: Keypad 3
	KEY_KP_4        = 324 // Key: Keypad 4
	KEY_KP_5        = 325 // Key: Keypad 5
	KEY_KP_6        = 326 // Key: Keypad 6
	KEY_KP_7        = 327 // Key: Keypad 7
	KEY_KP_8        = 328 // Key: Keypad 8
	KEY_KP_9        = 329 // Key: Keypad 9
	KEY_KP_DECIMAL  = 330 // Key: Keypad .
	KEY_KP_DIVIDE   = 331 // Key: Keypad /
	KEY_KP_MULTIPLY = 332 // Key: Keypad *
	KEY_KP_SUBTRACT = 333 // Key: Keypad -
	KEY_KP_ADD      = 334 // Key: Keypad +
	KEY_KP_ENTER    = 335 // Key: Keypad Enter
	KEY_KP_EQUAL    = 336 // Key: Keypad =

	// Android key buttons
	KEY_BACK        = 4  // Key: Android back button
	KEY_MENU        = 82 // Key: Android menu button
	KEY_VOLUME_UP   = 24 // Key: Android volume up button
	KEY_VOLUME_DOWN = 25 // Key: Android volume down button
)

// Mouse buttons

// Mouse cursor

// Gamepad buttons

// Gamepad axis

// Material map index

// Shader location index

// Shader uniform data type

// Shader attribute data types

// Pixel formats

// Texture parameters: filter mode

// Texture parameters: wrap mode

// Cubemap layouts

// Font type, defines generation method

// Color blending modes (pre-defined)

// Gesture

// Camera system modes

// Camera projection

// N-patch layout

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

//go:linkname SetRandomSeed C.SetRandomSeed
func SetRandomSeed(seed c.Uint)

//go:linkname GetRandomValue C.GetRandomValue
func GetRandomValue(min c.Int, max c.Int) c.Int

// -----------------------------------------------------------------------------
// Misc. functions

// -----------------------------------------------------------------------------
// Input-related functions: keyboard

//go:linkname IsKeyPressed C.IsKeyPressed
func IsKeyPressed(key c.Int) bool

//go:linkname IsKeyPressedRepeat C.IsKeyPressedRepeat
func IsKeyPressedRepeat(key c.Int) bool

//go:linkname IsKeyDown C.IsKeyDown
func IsKeyDown(key c.Int) bool

//go:linkname IsKeyReleased C.IsKeyReleased
func IsKeyReleased(key c.Int) bool

//go:linkname IsKeyUp C.IsKeyUp
func IsKeyUp(key c.Int) bool

//go:linkname GetKeyPressed C.GetKeyPressed
func GetKeyPressed() c.Int

//go:linkname GetCharPressed C.GetCharPressed
func GetCharPressed() c.Int

//go:linkname SetExitKey C.SetExitKey
func SetExitKey(key c.Int)

// -----------------------------------------------------------------------------
// Input-related functions: gamepads

// -----------------------------------------------------------------------------
// Input-related functions: mouse

// -----------------------------------------------------------------------------
// Input-related functions: touch

// -----------------------------------------------------------------------------
// Gestures and Touch Handling Functions (Module: rgestures)

// -----------------------------------------------------------------------------
