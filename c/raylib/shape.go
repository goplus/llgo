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

// -----------------------------------------------------------------------------

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

// Shader
type Shader struct {
	Id   c.Uint // Shader program id
	Locs *c.Int // Shader locations array (RL_MAX_SHADER_LOCATIONS)
}

// -----------------------------------------------------------------------------
// Drawing-related functions

// Set background color (framebuffer clear color)
//
//go:linkname ClearBackground C.ClearBackground
func ClearBackground(color Color)

// Begin drawing (call before drawing anything)
//
//go:linkname BeginDrawing C.BeginDrawing
func BeginDrawing()

// End drawing and swap buffers (call after drawing)
//
//go:linkname EndDrawing C.EndDrawing
func EndDrawing()

// Begin 2D mode with custom camera (2D)
//
//go:linkname BeginMode2D C.BeginMode2D
func BeginMode2D(camera Camera2D)

// End mode (2D)
//
//go:linkname EndMode2D C.EndMode2D
func EndMode2D()

// Begin 3D mode with custom camera (3D)
//
//go:linkname BeginMode3D C.BeginMode3D
func BeginMode3D(camera Camera3D)

// End mode (3D)
//
//go:linkname EndMode3D C.EndMode3D
func EndMode3D()

// Begin drawing to render texture
//-go:linkname BeginTextureMode C.BeginTextureMode
//func BeginTextureMode(target RenderTexture2D)

// End drawing to render texture
//
//go:linkname EndTextureMode C.EndTextureMode
func EndTextureMode()

// Begin custom shader drawing
//
//go:linkname BeginShaderMode C.BeginShaderMode
func BeginShaderMode(shader Shader)

// End custom shader drawing (use default shader)
//
//go:linkname EndShaderMode C.EndShaderMode
func EndShaderMode()

// Color blending modes (pre-defined)
type BlendMode c.Int

const (
	BLEND_ALPHA             BlendMode = iota // Blend textures considering alpha (default)
	BLEND_ADDITIVE                           // Blend textures adding colors
	BLEND_MULTIPLIED                         // Blend textures multiplying colors
	BLEND_ADD_COLORS                         // Blend textures adding colors (alternative)
	BLEND_SUBTRACT_COLORS                    // Blend textures subtracting colors (alternative)
	BLEND_ALPHA_PREMULTIPLY                  // Blend premultiplied textures considering alpha
	BLEND_CUSTOM                             // Blend textures using custom src/dst factors (use rlSetBlendFactors())
	BLEND_CUSTOM_SEPARATE                    // Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
)

// Begin blending mode (alpha, additive, multiplied, subtract, custom)
//
//go:linkname BeginBlendMode C.BeginBlendMode
func BeginBlendMode(mode BlendMode)

// End blending mode (reset to default: alpha blending)
//
//go:linkname EndBlendMode C.EndBlendMode
func EndBlendMode()

// Begin scissor mode (define screen area for following drawing)
//
//go:linkname BeginScissorMode C.BeginScissorMode
func BeginScissorMode(x, y, width, height c.Int)

// End scissor mode
//
//go:linkname EndScissorMode C.EndScissorMode
func EndScissorMode()

// -----------------------------------------------------------------------------
// VR stereo config functions for VR simulator

// -----------------------------------------------------------------------------
// Camera System Functions (Module: rcamera)

// Update camera position for selected mode
//
//go:linkname UpdateCamera C.UpdateCamera
func UpdateCamera(camera *Camera, mode c.Int)

// Update camera movement/rotation
//
//go:linkname UpdateCameraPro C.UpdateCameraPro
func UpdateCameraPro(camera *Camera, movement, rotation Vector3, zoom float32)

// -----------------------------------------------------------------------------

// Draw a color-filled rectangle
//
//go:linkname DrawRectangle C.DrawRectangle
func DrawRectangle(posX, posY, width, height c.Int, color Color)

// Draw text (using default font)
//
//go:linkname DrawText C.DrawText
func DrawText(text *c.Char, posX, posY, fontSize c.Int, color Color)

// -----------------------------------------------------------------------------
