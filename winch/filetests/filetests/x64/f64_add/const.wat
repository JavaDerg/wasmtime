;;! target = "x86_64"

(module
    (func (result f64)
        (f64.const 1.1)
        (f64.const 2.2)
        (f64.add)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4c8b5f08             	mov	r11, qword ptr [rdi + 8]
;;      	 4d8b1b               	mov	r11, qword ptr [r11]
;;      	 4981c310000000       	add	r11, 0x10
;;      	 4939e3               	cmp	r11, rsp
;;      	 0f872e000000         	ja	0x49
;;   1b:	 4989fe               	mov	r14, rdi
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 48897c2408           	mov	qword ptr [rsp + 8], rdi
;;      	 48893424             	mov	qword ptr [rsp], rsi
;;      	 f20f10051d000000     	movsd	xmm0, qword ptr [rip + 0x1d]
;;      	 f20f100d1d000000     	movsd	xmm1, qword ptr [rip + 0x1d]
;;      	 f20f58c8             	addsd	xmm1, xmm0
;;      	 660f28c1             	movapd	xmm0, xmm1
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;   49:	 0f0b                 	ud2	
;;   4b:	 0000                 	add	byte ptr [rax], al
;;   4d:	 0000                 	add	byte ptr [rax], al
;;   4f:	 009a99999999         	add	byte ptr [rdx - 0x66666667], bl
;;   55:	 99                   	cdq	
;;   56:	 01409a               	add	dword ptr [rax - 0x66], eax
;;   59:	 99                   	cdq	
;;   5a:	 99                   	cdq	
;;   5b:	 99                   	cdq	
;;   5c:	 99                   	cdq	
;;   5d:	 99                   	cdq	
;;   5e:	 f1                   	int1	
