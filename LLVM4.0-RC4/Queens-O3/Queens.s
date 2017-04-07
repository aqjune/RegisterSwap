	.text
	.file	"Queens.c"
	.globl	Initrand
	.p2align	4, 0x90
	.type	Initrand,@function
Initrand:                               # @Initrand
	.cfi_startproc
# BB#0:
	movq	$74755, seed(%rip)      # imm = 0x12403
	retq
.Lfunc_end0:
	.size	Initrand, .Lfunc_end0-Initrand
	.cfi_endproc

	.globl	Rand
	.p2align	4, 0x90
	.type	Rand,@function
Rand:                                   # @Rand
	.cfi_startproc
# BB#0:
	imull	$1309, seed(%rip), %eax # imm = 0x51D
	addl	$13849, %eax            # imm = 0x3619
	movzwl	%ax, %eax
	movq	%rax, seed(%rip)
                                        # kill: %EAX<def> %EAX<kill> %RAX<kill>
	retq
.Lfunc_end1:
	.size	Rand, .Lfunc_end1-Rand
	.cfi_endproc

	.globl	foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# BB#0:
	retq
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
	.cfi_endproc

	.globl	Try
	.p2align	4, 0x90
	.type	Try,@function
Try:                                    # @Try
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Lcfi1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Lcfi2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Lcfi3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Lcfi4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Lcfi5:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Lcfi6:
	.cfi_def_cfa_offset 96
.Lcfi7:
	.cfi_offset %rbx, -56
.Lcfi8:
	.cfi_offset %r12, -48
.Lcfi9:
	.cfi_offset %r13, -40
.Lcfi10:
	.cfi_offset %r14, -32
.Lcfi11:
	.cfi_offset %r15, -24
.Lcfi12:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movl	%edi, %ebp
	movl	$0, (%r13)
	movslq	%ebp, %rdi
	leal	1(%rdi), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	cmpl	$7, %edi
	jg	.LBB3_9
# BB#1:
	addl	$6, %ebp
	leaq	4(%rbx,%rdi,4), %rsi
	movq	$-7, %r14
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%r13)
	xorl	%eax, %eax
	cmpl	$0, 32(%rcx,%r14,4)
	je	.LBB3_7
# BB#3:                                 #   in Loop: Header=BB3_2 Depth=1
	cmpl	$0, 28(%rsi,%r14,4)
	je	.LBB3_7
# BB#4:                                 #   in Loop: Header=BB3_2 Depth=1
	movslq	%ebp, %r12
	cmpl	$0, (%r15,%r12,4)
	je	.LBB3_7
# BB#5:                                 #   in Loop: Header=BB3_2 Depth=1
	leal	8(%r14), %eax
	movq	8(%rsp), %r9            # 8-byte Reload
	movl	%eax, (%r9,%rdi,4)
	movl	$0, 32(%rcx,%r14,4)
	movl	$0, 28(%rsi,%r14,4)
	movl	$0, (%r15,%r12,4)
	movl	4(%rsp), %edi           # 4-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r15, %r8
	callq	Try
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	cmpl	$0, (%r13)
	jne	.LBB3_14
# BB#6:                                 #   in Loop: Header=BB3_2 Depth=1
	movl	$1, 32(%rcx,%r14,4)
	movl	$1, 28(%rsi,%r14,4)
	movl	$1, (%r15,%r12,4)
	movl	(%r13), %eax
.LBB3_7:                                #   in Loop: Header=BB3_2 Depth=1
	testq	%r14, %r14
	je	.LBB3_14
# BB#8:                                 #   in Loop: Header=BB3_2 Depth=1
	decl	%ebp
	incq	%r14
	testl	%eax, %eax
	je	.LBB3_2
	jmp	.LBB3_14
.LBB3_9:
	movl	$0, (%r13)
	cmpl	$0, 4(%rcx)
	je	.LBB3_18
# BB#10:
	cmpl	$0, 4(%rbx,%rdi,4)
	je	.LBB3_18
# BB#11:
	leal	6(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB3_18
# BB#12:
	addq	$4, %rcx
	leaq	4(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$1, %edx
	jmp	.LBB3_13
.LBB3_18:
	movl	$0, (%r13)
	cmpl	$0, 8(%rcx)
	je	.LBB3_19
# BB#15:
	cmpl	$0, 8(%rbx,%rdi,4)
	je	.LBB3_19
# BB#16:
	leal	5(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB3_19
# BB#17:
	addq	$8, %rcx
	leaq	8(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$2, %edx
	jmp	.LBB3_13
.LBB3_19:
	movl	$0, (%r13)
	cmpl	$0, 12(%rcx)
	je	.LBB3_23
# BB#20:
	cmpl	$0, 12(%rbx,%rdi,4)
	je	.LBB3_23
# BB#21:
	leal	4(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB3_23
# BB#22:
	addq	$12, %rcx
	leaq	12(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$3, %edx
	jmp	.LBB3_13
.LBB3_23:
	movl	$0, (%r13)
	cmpl	$0, 16(%rcx)
	je	.LBB3_27
# BB#24:
	cmpl	$0, 16(%rbx,%rdi,4)
	je	.LBB3_27
# BB#25:
	leal	3(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB3_27
# BB#26:
	addq	$16, %rcx
	leaq	16(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$4, %edx
	jmp	.LBB3_13
.LBB3_27:
	movl	$0, (%r13)
	cmpl	$0, 20(%rcx)
	je	.LBB3_31
# BB#28:
	cmpl	$0, 20(%rbx,%rdi,4)
	je	.LBB3_31
# BB#29:
	leal	2(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB3_31
# BB#30:
	addq	$20, %rcx
	leaq	20(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$5, %edx
	jmp	.LBB3_13
.LBB3_31:
	movl	$0, (%r13)
	cmpl	$0, 24(%rcx)
	je	.LBB3_35
# BB#32:
	cmpl	$0, 24(%rbx,%rdi,4)
	je	.LBB3_35
# BB#33:
	movslq	4(%rsp), %rsi           # 4-byte Folded Reload
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB3_35
# BB#34:
	addq	$24, %rcx
	leaq	24(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$6, %edx
	jmp	.LBB3_13
.LBB3_35:
	movl	$0, (%r13)
	cmpl	$0, 28(%rcx)
	je	.LBB3_39
# BB#36:
	cmpl	$0, 28(%rbx,%rdi,4)
	je	.LBB3_39
# BB#37:
	cmpl	$0, (%r15,%rdi,4)
	je	.LBB3_39
# BB#38:
	addq	$28, %rcx
	leaq	28(%rbx,%rdi,4), %rax
	leaq	(%r15,%rdi,4), %rbp
	movl	$7, %edx
	jmp	.LBB3_13
.LBB3_39:
	movl	$0, (%r13)
	cmpl	$0, 32(%rcx)
	je	.LBB3_14
# BB#40:
	cmpl	$0, 32(%rbx,%rdi,4)
	je	.LBB3_14
# BB#41:
	decl	%ebp
	movslq	%ebp, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB3_14
# BB#42:
	addq	$32, %rcx
	leaq	32(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$8, %edx
.LBB3_13:
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	%edx, (%rsi,%rdi,4)
	movl	$0, (%rcx)
	movl	$0, (%rax)
	movl	$0, (%rbp)
	movl	$1, (%r13)
.LBB3_14:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Try, .Lfunc_end3-Try
	.cfi_endproc

	.globl	Doit
	.p2align	4, 0x90
	.type	Doit,@function
Doit:                                   # @Doit
	.cfi_startproc
# BB#0:
	subq	$248, %rsp
.Lcfi13:
	.cfi_def_cfa_offset 256
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	leaq	-7(%rax), %rcx
	leal	-8(%rax), %edx
	cmpl	$7, %edx
	ja	.LBB4_3
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$1, -12(%rsp,%rax,4)
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	cmpq	$2, %rcx
	jl	.LBB4_5
# BB#4:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$1, 100(%rsp,%rax,4)
	cmpq	$7, %rcx
	jg	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$1, 64(%rsp,%rax,4)
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	incq	%rax
	cmpq	$24, %rax
	jne	.LBB4_1
# BB#7:
	leaq	12(%rsp), %rsi
	leaq	128(%rsp), %rdx
	leaq	16(%rsp), %rcx
	leaq	64(%rsp), %r8
	leaq	208(%rsp), %r9
	movl	$1, %edi
	callq	Try
	addq	$248, %rsp
	retq
.Lfunc_end4:
	.size	Doit, .Lfunc_end4-Doit
	.cfi_endproc

	.globl	Queens
	.p2align	4, 0x90
	.type	Queens,@function
Queens:                                 # @Queens
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Lcfi15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Lcfi16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Lcfi17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Lcfi18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Lcfi19:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Lcfi20:
	.cfi_def_cfa_offset 304
.Lcfi21:
	.cfi_offset %rbx, -56
.Lcfi22:
	.cfi_offset %r12, -48
.Lcfi23:
	.cfi_offset %r13, -40
.Lcfi24:
	.cfi_offset %r14, -32
.Lcfi25:
	.cfi_offset %r15, -24
.Lcfi26:
	.cfi_offset %rbp, -16
	movl	$1, %ebp
	leaq	12(%rsp), %r14
	leaq	128(%rsp), %r15
	leaq	16(%rsp), %r12
	leaq	64(%rsp), %r13
	leaq	208(%rsp), %rbx
	.p2align	4, 0x90
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_2:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-7(%rax), %rcx
	leal	-8(%rax), %edx
	cmpl	$7, %edx
	ja	.LBB5_4
# BB#3:                                 #   in Loop: Header=BB5_2 Depth=2
	movl	$1, -12(%rsp,%rax,4)
.LBB5_4:                                #   in Loop: Header=BB5_2 Depth=2
	cmpq	$2, %rcx
	jl	.LBB5_6
# BB#5:                                 #   in Loop: Header=BB5_2 Depth=2
	movl	$1, 100(%rsp,%rax,4)
	cmpq	$7, %rcx
	jg	.LBB5_7
.LBB5_6:                                #   in Loop: Header=BB5_2 Depth=2
	movl	$1, 64(%rsp,%rax,4)
.LBB5_7:                                #   in Loop: Header=BB5_2 Depth=2
	incq	%rax
	cmpq	$24, %rax
	jne	.LBB5_2
# BB#8:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	callq	Try
	incl	%ebp
	cmpl	$51, %ebp
	jne	.LBB5_1
# BB#9:
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Queens, .Lfunc_end5-Queens
	.cfi_endproc

	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Lcfi27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Lcfi28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Lcfi29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Lcfi30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Lcfi31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Lcfi32:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Lcfi33:
	.cfi_def_cfa_offset 304
.Lcfi34:
	.cfi_offset %rbx, -56
.Lcfi35:
	.cfi_offset %r12, -48
.Lcfi36:
	.cfi_offset %r13, -40
.Lcfi37:
	.cfi_offset %r14, -32
.Lcfi38:
	.cfi_offset %r15, -24
.Lcfi39:
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	leaq	12(%rsp), %r14
	leaq	128(%rsp), %r15
	leaq	16(%rsp), %r12
	leaq	64(%rsp), %r13
	leaq	208(%rsp), %rbx
	.p2align	4, 0x90
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #       Child Loop BB6_3 Depth 3
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$1, %ebp
	.p2align	4, 0x90
.LBB6_2:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_3 Depth 3
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-7(%rax), %rcx
	leal	-8(%rax), %edx
	cmpl	$7, %edx
	ja	.LBB6_5
# BB#4:                                 #   in Loop: Header=BB6_3 Depth=3
	movl	$1, -12(%rsp,%rax,4)
.LBB6_5:                                #   in Loop: Header=BB6_3 Depth=3
	cmpq	$2, %rcx
	jl	.LBB6_7
# BB#6:                                 #   in Loop: Header=BB6_3 Depth=3
	movl	$1, 100(%rsp,%rax,4)
	cmpq	$7, %rcx
	jg	.LBB6_8
.LBB6_7:                                #   in Loop: Header=BB6_3 Depth=3
	movl	$1, 64(%rsp,%rax,4)
.LBB6_8:                                #   in Loop: Header=BB6_3 Depth=3
	incq	%rax
	cmpq	$24, %rax
	jne	.LBB6_3
# BB#9:                                 #   in Loop: Header=BB6_2 Depth=2
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	callq	Try
	incl	%ebp
	cmpl	$51, %ebp
	jne	.LBB6_2
# BB#10:                                #   in Loop: Header=BB6_1 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	incl	%eax
	cmpl	$10000, %eax            # imm = 0x2710
	jne	.LBB6_1
# BB#11:
	xorl	%eax, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc

	.type	seed,@object            # @seed
	.comm	seed,8,8
	.type	value,@object           # @value
	.comm	value,4,4
	.type	fixed,@object           # @fixed
	.comm	fixed,4,4
	.type	floated,@object         # @floated
	.comm	floated,4,4
	.type	permarray,@object       # @permarray
	.comm	permarray,44,16
	.type	pctr,@object            # @pctr
	.comm	pctr,4,4
	.type	tree,@object            # @tree
	.comm	tree,8,8
	.type	stack,@object           # @stack
	.comm	stack,16,16
	.type	cellspace,@object       # @cellspace
	.comm	cellspace,152,16
	.type	freelist,@object        # @freelist
	.comm	freelist,4,4
	.type	movesdone,@object       # @movesdone
	.comm	movesdone,4,4
	.type	ima,@object             # @ima
	.comm	ima,6724,16
	.type	imb,@object             # @imb
	.comm	imb,6724,16
	.type	imr,@object             # @imr
	.comm	imr,6724,16
	.type	rma,@object             # @rma
	.comm	rma,6724,16
	.type	rmb,@object             # @rmb
	.comm	rmb,6724,16
	.type	rmr,@object             # @rmr
	.comm	rmr,6724,16
	.type	piececount,@object      # @piececount
	.comm	piececount,16,16
	.type	class,@object           # @class
	.comm	class,52,16
	.type	piecemax,@object        # @piecemax
	.comm	piecemax,52,16
	.type	puzzl,@object           # @puzzl
	.comm	puzzl,2048,16
	.type	p,@object               # @p
	.comm	p,26624,16
	.type	n,@object               # @n
	.comm	n,4,4
	.type	kount,@object           # @kount
	.comm	kount,4,4
	.type	sortlist,@object        # @sortlist
	.comm	sortlist,20004,16
	.type	biggest,@object         # @biggest
	.comm	biggest,4,4
	.type	littlest,@object        # @littlest
	.comm	littlest,4,4
	.type	top,@object             # @top
	.comm	top,4,4
	.type	z,@object               # @z
	.comm	z,2056,16
	.type	w,@object               # @w
	.comm	w,2056,16
	.type	e,@object               # @e
	.comm	e,1040,16
	.type	zr,@object              # @zr
	.comm	zr,4,4
	.type	zi,@object              # @zi
	.comm	zi,4,4

	.ident	"clang version 4.0.0 (https://github.com/aqjune/clang-freeze.git 8d60774cf7adc4834ce7d05451e844869735e943) (https://github.com/aqjune/llvm-freeze.git ddf6e73ea41ac78a7f748f683f6b706f70763dff)"
	.section	".note.GNU-stack","",@progbits
