;;! target = "x86_64"

(module
    (func (result i32)
        (f32.const 1.1)
        (f32.const 2.2)
        (f32.le)
    )
)
;;      	 55                   	push	rbp
;;      	 4889e5               	mov	rbp, rsp
;;      	 4c8b5f08             	mov	r11, qword ptr [rdi + 8]
;;      	 4d8b1b               	mov	r11, qword ptr [r11]
;;      	 4981c310000000       	add	r11, 0x10
;;      	 4939e3               	cmp	r11, rsp
;;      	 0f8732000000         	ja	0x4d
;;   1b:	 4989fe               	mov	r14, rdi
;;      	 4883ec10             	sub	rsp, 0x10
;;      	 48897c2408           	mov	qword ptr [rsp + 8], rdi
;;      	 48893424             	mov	qword ptr [rsp], rsi
;;      	 f30f10051d000000     	movss	xmm0, dword ptr [rip + 0x1d]
;;      	 f30f100d1d000000     	movss	xmm1, dword ptr [rip + 0x1d]
;;      	 0f2ec1               	ucomiss	xmm0, xmm1
;;      	 b800000000           	mov	eax, 0
;;      	 400f93c0             	setae	al
;;      	 4883c410             	add	rsp, 0x10
;;      	 5d                   	pop	rbp
;;      	 c3                   	ret	
;;   4d:	 0f0b                 	ud2	
;;   4f:	 00cd                 	add	ch, cl
;;   51:	 cc                   	int3	
;;   52:	 0c40                 	or	al, 0x40
;;   54:	 0000                 	add	byte ptr [rax], al
;;   56:	 0000                 	add	byte ptr [rax], al
;;   58:	 cdcc                 	int	0xcc
