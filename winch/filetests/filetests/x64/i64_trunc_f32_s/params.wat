;;! target = "x86_64"

(module
    (func (param f32) (result i64)
        (local.get 0)
        (i64.trunc_f32_s)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4c8b5f08             	mov	r11, qword ptr [rdi + 8]
;;      	 4d8b1b               	mov	r11, qword ptr [r11]
;;      	 4981c318000000       	add	r11, 0x18
;;      	 4939e3               	cmp	r11, rsp
;;      	 0f875f000000         	ja	0x7a
;;   1b:	 4989fe               	mov	r14, rdi
;;      	 4883ec18             	sub	rsp, 0x18
;;      	 48897c2410           	mov	qword ptr [rsp + 0x10], rdi
;;      	 4889742408           	mov	qword ptr [rsp + 8], rsi
;;      	 f30f11442404         	movss	dword ptr [rsp + 4], xmm0
;;      	 f30f10442404         	movss	xmm0, dword ptr [rsp + 4]
;;      	 f3480f2cc0           	cvttss2si	rax, xmm0
;;      	 4883f801             	cmp	rax, 1
;;      	 0f812d000000         	jno	0x74
;;   47:	 0f2ec0               	ucomiss	xmm0, xmm0
;;      	 0f8a2c000000         	jp	0x7c
;;   50:	 41bb000000df         	mov	r11d, 0xdf000000
;;      	 66450f6efb           	movd	xmm15, r11d
;;      	 410f2ec7             	ucomiss	xmm0, xmm15
;;      	 0f8219000000         	jb	0x7e
;;   65:	 66450f57ff           	xorpd	xmm15, xmm15
;;      	 440f2ef8             	ucomiss	xmm15, xmm0
;;      	 0f820c000000         	jb	0x80
;;   74:	 4883c418             	add	rsp, 0x18
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;   7a:	 0f0b                 	ud2	
;;   7c:	 0f0b                 	ud2	
;;   7e:	 0f0b                 	ud2	
;;   80:	 0f0b                 	ud2	
