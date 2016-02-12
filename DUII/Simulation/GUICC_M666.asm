﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\ConvertColor\GUICC_M666.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_LCD_API_ColorConv_M666
CONST	SEGMENT
_LCD_API_ColorConv_M666 DD FLAT:__Color2Index_M666
	DD	FLAT:__Index2Color_M666
	DD	FLAT:__GetIndexMask_M666
CONST	ENDS
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\convertcolor\guicc_m666.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT __Color2Index_M666
_TEXT	SEGMENT
_b$ = -32						; size = 4
_g$ = -20						; size = 4
_r$ = -8						; size = 4
_Color$ = 8						; size = 4
__Color2Index_M666 PROC					; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 39
	mov	eax, DWORD PTR _Color$[ebp]
	shr	eax, 2
	and	eax, 63					; 0000003fH
	mov	DWORD PTR _b$[ebp], eax
; Line 40
	mov	eax, DWORD PTR _Color$[ebp]
	shr	eax, 10					; 0000000aH
	and	eax, 63					; 0000003fH
	mov	DWORD PTR _g$[ebp], eax
; Line 41
	mov	eax, DWORD PTR _Color$[ebp]
	shr	eax, 18					; 00000012H
	and	eax, 63					; 0000003fH
	mov	DWORD PTR _r$[ebp], eax
; Line 42
	mov	eax, DWORD PTR _g$[ebp]
	shl	eax, 6
	add	eax, DWORD PTR _r$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	shl	ecx, 12					; 0000000cH
	add	eax, ecx
; Line 43
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__Color2Index_M666 ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __Index2Color_M666
_TEXT	SEGMENT
_b$ = -32						; size = 4
_g$ = -20						; size = 4
_r$ = -8						; size = 4
_Index$ = 8						; size = 4
__Index2Color_M666 PROC					; COMDAT
; Line 49
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 51
	mov	eax, DWORD PTR _Index$[ebp]
	and	eax, 63					; 0000003fH
	shl	eax, 2
	mov	DWORD PTR _b$[ebp], eax
; Line 52
	mov	eax, DWORD PTR _Index$[ebp]
	and	eax, 4032				; 00000fc0H
	shr	eax, 4
	mov	DWORD PTR _g$[ebp], eax
; Line 53
	mov	eax, DWORD PTR _Index$[ebp]
	and	eax, 258048				; 0003f000H
	shr	eax, 10					; 0000000aH
	mov	DWORD PTR _r$[ebp], eax
; Line 54
	mov	eax, DWORD PTR _g$[ebp]
	shl	eax, 8
	add	eax, DWORD PTR _r$[ebp]
	mov	ecx, DWORD PTR _b$[ebp]
	shl	ecx, 16					; 00000010H
	add	eax, ecx
; Line 55
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__Index2Color_M666 ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __GetIndexMask_M666
_TEXT	SEGMENT
__GetIndexMask_M666 PROC				; COMDAT
; Line 61
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 62
	mov	eax, 262143				; 0003ffffH
; Line 63
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__GetIndexMask_M666 ENDP
_TEXT	ENDS
END