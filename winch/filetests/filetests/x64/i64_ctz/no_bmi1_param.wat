;;! target = "x86_64"

(module
    (func (param i64) (result i64)
        (local.get 0)
        (i64.ctz)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4c8b5f08             	mov	r11, qword ptr [rdi + 8]
;;      	 4d8b1b               	mov	r11, qword ptr [r11]
;;      	 4981c318000000       	add	r11, 0x18
;;      	 4939e3               	cmp	r11, rsp
;;      	 0f8734000000         	ja	0x4f
;;   1b:	 4989fe               	mov	r14, rdi
;;      	 4883ec18             	sub	rsp, 0x18
;;      	 48897c2410           	mov	qword ptr [rsp + 0x10], rdi
;;      	 4889742408           	mov	qword ptr [rsp + 8], rsi
;;      	 48891424             	mov	qword ptr [rsp], rdx
;;      	 488b0424             	mov	rax, qword ptr [rsp]
;;      	 480fbcc0             	bsf	rax, rax
;;      	 41bb00000000         	mov	r11d, 0
;;      	 410f94c3             	sete	r11b
;;      	 49c1e306             	shl	r11, 6
;;      	 4c01d8               	add	rax, r11
;;      	 4883c418             	add	rsp, 0x18
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;   4f:	 0f0b                 	ud2	
