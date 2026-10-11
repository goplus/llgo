@echo off
rem Conda places go.exe outside GOROOT; LLGo uses GOROOT/bin/go.exe.
if not exist "%CONDA_PREFIX%\go\bin" (
  mkdir "%CONDA_PREFIX%\go\bin"
  if errorlevel 1 exit /b 1
)
fc /b "%CONDA_PREFIX%\bin\go.exe" "%CONDA_PREFIX%\go\bin\go.exe" >nul 2>&1
if errorlevel 1 (
  copy /y "%CONDA_PREFIX%\bin\go.exe" "%CONDA_PREFIX%\go\bin\go.exe" >nul
  if errorlevel 1 exit /b 1
)

set "GOFLAGS=-tags=byollvm"
set "GOTOOLCHAIN=local"
set "CGO_ENABLED=1"
set "CC=clang -fuse-ld=lld -fms-runtime-lib=dll"
set "CXX=clang++ -fuse-ld=lld -fms-runtime-lib=dll"
set "LLVM_CONFIG=llvm-config"
set "CGO_CXXFLAGS=-std=c++17"
set "LLGO_ROOT=%~dp0.."
set "CGO_CPPFLAGS="
for /f "usebackq delims=" %%F in (`powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%PIXI_PROJECT_ROOT%\devenv_windows_flags.ps1" -CppFlags`) do set "CGO_CPPFLAGS=%%F"
if not defined CGO_CPPFLAGS exit /b 1
set "CGO_LDFLAGS="
for /f "usebackq delims=" %%F in (`powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%PIXI_PROJECT_ROOT%\devenv_windows_flags.ps1"`) do set "CGO_LDFLAGS=%%F"
if not defined CGO_LDFLAGS exit /b 1
