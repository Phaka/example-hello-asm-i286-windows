# Hello World in x86 Assembly (16-bit Windows)

A minimal Hello World implementation in x86 16-bit assembly for Windows 3.x, demonstrating a simple Windows GUI application.

## Installation

Install Open Watcom from http://www.openwatcom.org/

## Building and Running

```cmd
:: Assemble
wasm -bt=windows -ms hello.asm

:: Link as Windows application
wlink system windows file hello.obj

:: Run (requires Windows 3.x or compatible environment)
hello.exe
```

## Testing Environments

This program has been tested and works in:
- Windows 3.1 running on DOS
- Windows 3.11 for Workgroups
- DOSBox with Windows 3.1 installed
- PCem with Windows 3.1
- 86Box with Windows 3.1

### Testing with DOSBox

1. Install Windows 3.1 in DOSBox
2. Mount your build directory
3. Run hello.exe from Windows 3.1

Note: Unlike the DOS version, this is a true Windows application that requires the Windows environment to run. It cannot run directly from DOS.

## Code Explanation

Uses Windows 3.x API:
- MessageBoxA to display a GUI message box
- ExitProcess to terminate the program properly

Since Windows 3.x ran on top of DOS, this program demonstrates the transition from DOS's character-based interface to Windows' GUI environment.
