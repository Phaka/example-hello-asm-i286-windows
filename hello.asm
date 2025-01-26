.286                            ; 286 instructions
.model small                    ; Memory model
.stack 2048                     ; Larger stack for Windows

; Windows constants
MB_OK     equ    0
NULL      equ    0

extern MESSAGEBOXA:far         ; Windows API function
extern EXITPROCESS:far         ; Windows API function

.data
Caption  db      'Hello',0
Message  db      'Hello, World!',0

.code
        public  WinMain
WinMain proc    far
        push    bp                      ; Set up stack frame
        mov     bp, sp
        
        push    MB_OK                   ; Message box style
        push    ds                      ; Caption segment
        lea     ax, Caption
        push    ax                      ; Caption offset
        push    ds                      ; Message segment
        lea     ax, Message
        push    ax                      ; Message offset
        push    NULL                    ; Owner window handle
        call    MESSAGEBOXA            ; Display message box
        
        push    NULL                   ; Exit code
        call    EXITPROCESS           ; Terminate program
WinMain endp

        end     WinMain
