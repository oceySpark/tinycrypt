; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\hub\xtea\xtea.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_xtea_encrypt
; Function compile flags: /Ogspy
;	COMDAT _xtea_encrypt
_TEXT	SEGMENT
_sum$ = -4						; size = 4
tv132 = 8						; size = 4
_rnds$ = 8						; size = 4
_key$ = 12						; size = 4
_j$ = 16						; size = 4
_buf$ = 16						; size = 4
_xtea_encrypt PROC					; COMDAT
; File c:\hub\xtea\xtea.c
; Line 32
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 41
	mov	eax, DWORD PTR _rnds$[ebp]
	and	DWORD PTR _sum$[ebp], 0
	push	esi
	mov	esi, DWORD PTR _buf$[ebp]
	mov	edx, DWORD PTR [esi+4]
	push	edi
	mov	edi, DWORD PTR [esi]
	test	eax, eax
	je	SHORT $LN5@xtea_encry
; Line 34
	mov	DWORD PTR tv132[ebp], eax
	push	ebx
$LL14@xtea_encry:
; Line 42
	and	DWORD PTR _j$[ebp], 0
$LL15@xtea_encry:
; Line 44
	cmp	DWORD PTR _j$[ebp], 0
	mov	ecx, DWORD PTR _sum$[ebp]
	je	SHORT $LN1@xtea_encry
; Line 45
	sub	DWORD PTR _sum$[ebp], 1640531527	; 61c88647H
; Line 46
	mov	ecx, DWORD PTR _sum$[ebp]
	shr	ecx, 11					; 0000000bH
$LN1@xtea_encry:
; Line 48
	mov	eax, edx
	shr	eax, 5
	mov	ebx, edx
	shl	ebx, 4
	xor	eax, ebx
	mov	ebx, DWORD PTR _key$[ebp]
	and	ecx, 3
	mov	ecx, DWORD PTR [ebx+ecx*4]
	add	ecx, DWORD PTR _sum$[ebp]
	add	eax, edx
	xor	eax, ecx
	add	eax, edi
	inc	DWORD PTR _j$[ebp]
	cmp	DWORD PTR _j$[ebp], 2
; Line 49
	mov	edi, edx
	mov	edx, eax
	jl	SHORT $LL15@xtea_encry
; Line 41
	dec	DWORD PTR tv132[ebp]
	jne	SHORT $LL14@xtea_encry
	pop	ebx
$LN5@xtea_encry:
; Line 52
	mov	DWORD PTR [esi], edi
	pop	edi
; Line 53
	mov	DWORD PTR [esi+4], edx
	pop	esi
; Line 54
	leave
	ret	0
_xtea_encrypt ENDP
_TEXT	ENDS
END
