;;! target = "x86_64"

(module
    (func (result f32)
        (f32.const -1.32)
        (f32.neg)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4c8b5f08             	mov	r11, qword ptr [rdi + 8]
;;      	 4d8b1b               	mov	r11, qword ptr [r11]
;;      	 4981c310000000       	add	r11, 0x10
;;      	 4939e3               	cmp	r11, rsp
;;      	 0f872d000000         	ja	0x48
;;   1b:	 4989fe               	mov	r14, rdi
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 48897c2408           	mov	qword ptr [rsp + 8], rdi
;;      	 48893424             	mov	qword ptr [rsp], rsi
;;      	 f30f10051d000000     	movss	xmm0, dword ptr [rip + 0x1d]
;;      	 41bb00000080         	mov	r11d, 0x80000000
;;      	 66450f6efb           	movd	xmm15, r11d
;;      	 410f57c7             	xorps	xmm0, xmm15
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;   48:	 0f0b                 	ud2	
;;   4a:	 0000                 	add	byte ptr [rax], al
;;   4c:	 0000                 	add	byte ptr [rax], al
;;   4e:	 0000                 	add	byte ptr [rax], al
;;   50:	 c3                   	ret	
;;   51:	 f5                   	cmc	
;;   52:	 a8bf                 	test	al, 0xbf
