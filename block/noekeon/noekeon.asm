; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	c:\hub\tinycrypt\block\noekeon\noekeon.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_Theta
; Function compile flags: /Ogspy
;	COMDAT _Theta
_TEXT	SEGMENT
_a$ = 8							; size = 4
_k$ = 12						; size = 4
_Theta	PROC						; COMDAT
; File c:\hub\tinycrypt\block\noekeon\noekeon.c
; Line 38
	mov	eax, DWORD PTR _a$[esp-4]
	mov	ecx, DWORD PTR [eax]
	xor	ecx, DWORD PTR [eax+8]
	push	esi
; Line 40
	mov	edx, ecx
	ror	edx, 8
	mov	esi, ecx
	rol	esi, 8
	xor	edx, esi
	xor	ecx, edx
; Line 42
	xor	DWORD PTR [eax+4], ecx
; Line 43
	xor	DWORD PTR [eax+12], ecx
; Line 45
	mov	edx, DWORD PTR _k$[esp]
	push	edi
	push	4
	mov	ecx, eax
	sub	edx, eax
	pop	esi
$LL3@Theta:
; Line 46
	mov	edi, DWORD PTR [edx+ecx]
	xor	DWORD PTR [ecx], edi
	add	ecx, 4
	dec	esi
	jne	SHORT $LL3@Theta
; Line 49
	mov	ecx, DWORD PTR [eax+12]
	xor	ecx, DWORD PTR [eax+4]
	pop	edi
; Line 50
	mov	edx, ecx
	mov	esi, ecx
	ror	edx, 8
	rol	esi, 8
	xor	edx, esi
	xor	ecx, edx
; Line 52
	xor	DWORD PTR [eax], ecx
; Line 53
	xor	DWORD PTR [eax+8], ecx
	pop	esi
; Line 55
	ret	0
_Theta	ENDP
_TEXT	ENDS
PUBLIC	_Round
; Function compile flags: /Ogspy
;	COMDAT _Round
_TEXT	SEGMENT
_rc_tab$ = -20						; size = 17
_s$ = 8							; size = 4
_Key$ = 12						; size = 4
_enc$ = 16						; size = 4
_rnd$ = 20						; size = 4
_end$ = 24						; size = 4
_Round	PROC						; COMDAT
; Line 63
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
; Line 73
	mov	eax, DWORD PTR _rnd$[ebp]
	push	esi
	push	edi
; Line 74
	xor	edi, edi
; Line 75
	cmp	DWORD PTR _enc$[ebp], 1
	mov	DWORD PTR _rc_tab$[ebp], 1815485312	; 6c361b80H
	mov	DWORD PTR _rc_tab$[ebp+4], -1706185768	; 9a4dabd8H
	mov	DWORD PTR _rc_tab$[ebp+8], 1673289263	; 63bc5e2fH
	mov	DWORD PTR _rc_tab$[ebp+12], 1781897158	; 6a3597c6H
	mov	BYTE PTR _rc_tab$[ebp+16], 212		; 000000d4H
	movzx	eax, BYTE PTR _rc_tab$[ebp+eax]
	jne	SHORT $LN2@Round
; Line 76
	mov	edi, eax
	xor	eax, eax
$LN2@Round:
; Line 79
	mov	esi, DWORD PTR _s$[ebp]
; Line 80
	push	DWORD PTR _Key$[ebp]
	xor	DWORD PTR [esi], eax
	push	esi
	call	_Theta
; Line 81
	xor	DWORD PTR [esi], edi
; Line 83
	cmp	DWORD PTR _end$[ebp], 0
	mov	edi, DWORD PTR [esi]
	pop	ecx
	pop	ecx
	jne	SHORT $LN3@Round
; Line 87
	mov	edx, DWORD PTR [esi+8]
; Line 88
	mov	ecx, DWORD PTR [esi+12]
	mov	eax, DWORD PTR [esi+4]
	rol	edx, 5
	rol	ecx, 2
	rol	eax, 1
	push	ebx
; Line 91
	mov	ebx, ecx
	or	ebx, edx
	not	ebx
	xor	eax, ebx
	mov	DWORD PTR [esi+4], eax
; Line 92
	and	eax, edx
	xor	edi, eax
; Line 96
	mov	eax, ecx
	xor	eax, DWORD PTR [esi+4]
	mov	DWORD PTR [esi], ecx
	xor	eax, edx
	xor	eax, edi
	mov	DWORD PTR [esi+8], eax
; Line 99
	mov	ecx, DWORD PTR [esi+8]
	or	eax, edi
	not	eax
	xor	DWORD PTR [esi+4], eax
	and	ecx, DWORD PTR [esi+4]
	pop	ebx
	xor	DWORD PTR [esi], ecx
; Line 102
	ror	DWORD PTR [esi+4], 1
; Line 103
	ror	DWORD PTR [esi+8], 5
; Line 104
	ror	edi, 2
	mov	DWORD PTR [esi+12], edi
$LN3@Round:
	pop	edi
	pop	esi
; Line 105
	leave
	ret	0
_Round	ENDP
_TEXT	ENDS
PUBLIC	_swapcpy
; Function compile flags: /Ogspy
;	COMDAT _swapcpy
_TEXT	SEGMENT
_dst$ = 8						; size = 4
_src$ = 12						; size = 4
_swapcpy PROC						; COMDAT
; Line 112
	mov	ecx, DWORD PTR _src$[esp-4]
	mov	edx, DWORD PTR _dst$[esp-4]
	push	esi
	push	edi
	push	4
	sub	edx, ecx
	pop	esi
$LL3@swapcpy:
; Line 113
	mov	eax, DWORD PTR [ecx]
	mov	edi, eax
	ror	edi, 8
	and	edi, -16711936				; ff00ff00H
	rol	eax, 8
	and	eax, 16711935				; 00ff00ffH
	or	edi, eax
	mov	DWORD PTR [edx+ecx], edi
	add	ecx, 4
	dec	esi
	jne	SHORT $LL3@swapcpy
; Line 115
	pop	edi
	pop	esi
	ret	0
_swapcpy ENDP
_TEXT	ENDS
PUBLIC	_Noekeon
; Function compile flags: /Ogspy
;	COMDAT _Noekeon
_TEXT	SEGMENT
_NullVector$ = -48					; size = 16
_State$ = -32						; size = 16
_Key$ = -16						; size = 16
_k$ = 8							; size = 4
_buf$ = 12						; size = 4
_enc$ = 16						; size = 4
_Noekeon PROC						; COMDAT
; Line 121
	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H
	push	esi
; Line 126
	push	DWORD PTR _k$[ebp]
	lea	eax, DWORD PTR _Key$[ebp]
	push	eax
	call	_swapcpy
; Line 127
	push	DWORD PTR _buf$[ebp]
	lea	eax, DWORD PTR _State$[ebp]
	push	eax
	call	_swapcpy
	add	esp, 16					; 00000010H
; Line 129
	cmp	DWORD PTR _enc$[ebp], 0
	jne	SHORT $LN8@Noekeon
; Line 131
	xor	esi, esi
$LL7@Noekeon:
; Line 132
	xor	eax, eax
	cmp	esi, 16					; 00000010H
	sete	al
	push	eax
	push	esi
	push	0
	lea	eax, DWORD PTR _Key$[ebp]
	push	eax
	lea	eax, DWORD PTR _State$[ebp]
	push	eax
	call	_Round
	add	esp, 20					; 00000014H
	inc	esi
	cmp	esi, 16					; 00000010H
	jle	SHORT $LL7@Noekeon
; Line 134
	jmp	SHORT $LN1@Noekeon
$LN8@Noekeon:
	push	edi
; Line 135
	xor	eax, eax
	lea	edi, DWORD PTR _NullVector$[ebp]
	stosd
	stosd
	stosd
	stosd
; Line 136
	lea	eax, DWORD PTR _NullVector$[ebp]
	push	eax
	lea	eax, DWORD PTR _Key$[ebp]
	push	eax
	call	_Theta
	pop	ecx
	pop	ecx
; Line 138
	push	16					; 00000010H
	pop	esi
	pop	edi
$LL3@Noekeon:
; Line 139
	xor	eax, eax
	test	esi, esi
	sete	al
	push	eax
	push	esi
	push	DWORD PTR _enc$[ebp]
	lea	eax, DWORD PTR _Key$[ebp]
	push	eax
	lea	eax, DWORD PTR _State$[ebp]
	push	eax
	call	_Round
	add	esp, 20					; 00000014H
	dec	esi
	jns	SHORT $LL3@Noekeon
$LN1@Noekeon:
; Line 142
	lea	eax, DWORD PTR _State$[ebp]
	push	eax
	push	DWORD PTR _buf$[ebp]
	call	_swapcpy
	pop	ecx
	pop	ecx
	pop	esi
; Line 143
	leave
	ret	0
_Noekeon ENDP
_TEXT	ENDS
END