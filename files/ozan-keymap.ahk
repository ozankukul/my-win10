; Capslock Remapping Script 
;
; (forked from svenlr by ozankukul)
;
; This script was prepared: 
; * for users with a TR-QWERTY keyboard layout
; * for AutoHotkey v1.1.* (for its unicode character support)
; * in UTF-16LE text encoding (to enable TR chars and AHK compatibility)
; 
; Powershell example to run this script:
; > & FullPathToAutoHotkey.exe FullPathToScript.ahk
; 
; Notes: 
; * This script needs admin privileges to work in admin programs.
; * An admin powershell can run the script with admin privileges.
; * It is recommended to use Windows Task Scheduler to implement:
; ----> a schedule with admin privileges for use case convenience
; ----> a schedule action similar to the given powershell example
; ----> a schedule trigger on each system start up or user log on
; 
; Concept of this script:
; * Deactivate default capslock key behavior and use it as a modifier.
; * Provide a key combination for default capslock key behavior.
;
; Keymap:
; * CapsLock           = AltGr + Shift + CapsLock
; * Esc                = CapsLock + Q
; * Up/Left/Down/Right = CapsLock + I J K L
; * PgUp/PgDn/Home/End = CapsLock + P Ş U O
; * []{()}~            = CapsLock + H N M Ö Ç . Y
; * @#$%&              = AltGr + Q W E R T
; * "?=+/              = AltGr + A S D F G
; * '!^*\              = AltGr + Z X C V B
; * KEY(<>|)           = KEY(-_|)
; * Desktop Left/Right = Win + D F

#Persistent
SetCapsLockState, AlwaysOff

;swap i and ş
VKBA::VKDE
VKDE::VKBA

;swap ç and ,
VKDC::VKBC
VKBC::VKDC

VKE2::VKBD ; (<>|) is (-_|)

Capslock & q::Esc

Capslock & ı::Up
Capslock & k::Down
Capslock & j::Left
Capslock & l::Right

Capslock & p::PgUp
Capslock & ş::PgDn
Capslock & u::Home
Capslock & o::End


Capslock & y::SendInput {~}{Space}
Capslock & h::SendInput {[}
Capslock & n::SendInput {]}
Capslock & m::SendInput {{}
Capslock & ö::SendInput {(}
Capslock & ç::SendInput {)}
Capslock & .::SendInput {}}

Capslock & d::SendInput {LWin down}{LControl down}{Left down}{LWin up}{LControl up}{Left up}
Capslock & f::SendInput {LWin down}{LControl down}{Right down}{LWin up}{LControl up}{Right up}

<^>!w::SendInput {#}
<^>!e::SendInput {$}
<^>!r::SendInput {`%}
<^>!t::SendInput {&}
<^>!a::SendInput {"}
<^>!s::SendInput {?}
<^>!d::SendInput {=}
<^>!f::SendInput {+}
<^>!g::SendInput {/}
<^>!z::SendInput {'}
<^>!x::SendInput {!}
<^>!c::SendInput {^}{Space}
<^>!v::SendInput {*}
<^>!b::SendInput {\}
<^>!3::SendInput {<}
<^>!4::SendInput {>}

; Make Alt Gr + Shift + Capslock work like Capslock
<^>!+Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return