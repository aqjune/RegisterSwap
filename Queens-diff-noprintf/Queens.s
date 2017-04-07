	.text
	.file	"Queens.bc"
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

	.globl	Try
	.p2align	4, 0x90
	.type	Try,@function
Try:                                    # @Try
	.cfi_startproc
# BB#0:                                 # %.lr.ph
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
	movq	%rsi, %r14
	movl	%edi, %ebp
	movl	$0, (%r14)
	movslq	%ebp, %rdi
	leal	1(%rdi), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	cmpl	$7, %ebp
	jg	.LBB2_9
# BB#1:                                 # %.lr.ph.split.us.preheader
	addl	$6, %ebp
	leaq	4(%rbx,%rdi,4), %rsi
	movq	$-7, %r13
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB2_2:                                # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%r14)
	xorl	%eax, %eax
	cmpl	$0, 32(%rcx,%r13,4)
	je	.LBB2_7
# BB#3:                                 #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 28(%rsi,%r13,4)
	je	.LBB2_7
# BB#4:                                 #   in Loop: Header=BB2_2 Depth=1
	movslq	%ebp, %r12
	cmpl	$0, (%r15,%r12,4)
	je	.LBB2_7
# BB#5:                                 #   in Loop: Header=BB2_2 Depth=1
	leal	8(%r13), %eax
	movq	8(%rsp), %r9            # 8-byte Reload
	movl	%eax, (%r9,%rdi,4)
	movl	$0, 32(%rcx,%r13,4)
	movl	$0, 28(%rsi,%r13,4)
	movl	$0, (%r15,%r12,4)
	movl	4(%rsp), %edi           # 4-byte Reload
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r15, %r8
	callq	Try
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	cmpl	$0, (%r14)
	jne	.LBB2_14
# BB#6:                                 # %.sink.split.us
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$1, 32(%rcx,%r13,4)
	movl	$1, 28(%rsi,%r13,4)
	movl	$1, (%r15,%r12,4)
	movl	(%r14), %eax
.LBB2_7:                                # %.backedge.us
                                        #   in Loop: Header=BB2_2 Depth=1
	testq	%r13, %r13
	je	.LBB2_14
# BB#8:                                 # %.backedge.us
                                        #   in Loop: Header=BB2_2 Depth=1
	decl	%ebp
	incq	%r13
	testl	%eax, %eax
	je	.LBB2_2
	jmp	.LBB2_14
.LBB2_9:                                # %.lr.ph.split
	movl	$0, (%r14)
	cmpl	$0, 4(%rcx)
	je	.LBB2_18
# BB#10:
	cmpl	$0, 4(%rbx,%rdi,4)
	je	.LBB2_18
# BB#11:
	leal	6(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB2_18
# BB#12:
	addq	$4, %rcx
	leaq	4(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$1, %edx
	jmp	.LBB2_13
.LBB2_18:                               # %.backedge
	movl	$0, (%r14)
	cmpl	$0, 8(%rcx)
	je	.LBB2_19
# BB#15:
	cmpl	$0, 8(%rbx,%rdi,4)
	je	.LBB2_19
# BB#16:
	leal	5(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB2_19
# BB#17:
	addq	$8, %rcx
	leaq	8(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$2, %edx
	jmp	.LBB2_13
.LBB2_19:                               # %.backedge.1
	movl	$0, (%r14)
	cmpl	$0, 12(%rcx)
	je	.LBB2_23
# BB#20:
	cmpl	$0, 12(%rbx,%rdi,4)
	je	.LBB2_23
# BB#21:
	leal	4(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB2_23
# BB#22:
	addq	$12, %rcx
	leaq	12(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$3, %edx
	jmp	.LBB2_13
.LBB2_23:                               # %.backedge.2
	movl	$0, (%r14)
	cmpl	$0, 16(%rcx)
	je	.LBB2_27
# BB#24:
	cmpl	$0, 16(%rbx,%rdi,4)
	je	.LBB2_27
# BB#25:
	leal	3(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB2_27
# BB#26:
	addq	$16, %rcx
	leaq	16(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$4, %edx
	jmp	.LBB2_13
.LBB2_27:                               # %.backedge.3
	movl	$0, (%r14)
	cmpl	$0, 20(%rcx)
	je	.LBB2_31
# BB#28:
	cmpl	$0, 20(%rbx,%rdi,4)
	je	.LBB2_31
# BB#29:
	leal	2(%rbp), %eax
	movslq	%eax, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB2_31
# BB#30:
	addq	$20, %rcx
	leaq	20(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$5, %edx
	jmp	.LBB2_13
.LBB2_31:                               # %.backedge.4
	movl	$0, (%r14)
	cmpl	$0, 24(%rcx)
	je	.LBB2_35
# BB#32:
	cmpl	$0, 24(%rbx,%rdi,4)
	je	.LBB2_35
# BB#33:
	movslq	4(%rsp), %rsi           # 4-byte Folded Reload
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB2_35
# BB#34:
	addq	$24, %rcx
	leaq	24(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$6, %edx
	jmp	.LBB2_13
.LBB2_35:                               # %.backedge.5
	movl	$0, (%r14)
	cmpl	$0, 28(%rcx)
	je	.LBB2_39
# BB#36:
	cmpl	$0, 28(%rbx,%rdi,4)
	je	.LBB2_39
# BB#37:
	cmpl	$0, (%r15,%rdi,4)
	je	.LBB2_39
# BB#38:
	addq	$28, %rcx
	leaq	28(%rbx,%rdi,4), %rax
	leaq	(%r15,%rdi,4), %rbp
	movl	$7, %edx
	jmp	.LBB2_13
.LBB2_39:                               # %.backedge.6
	movl	$0, (%r14)
	cmpl	$0, 32(%rcx)
	je	.LBB2_14
# BB#40:
	cmpl	$0, 32(%rbx,%rdi,4)
	je	.LBB2_14
# BB#41:
	decl	%ebp
	movslq	%ebp, %rsi
	cmpl	$0, (%r15,%rsi,4)
	je	.LBB2_14
# BB#42:
	addq	$32, %rcx
	leaq	32(%rbx,%rdi,4), %rax
	leaq	(%r15,%rsi,4), %rbp
	movl	$8, %edx
.LBB2_13:                               # %.backedge.thread
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	%edx, (%rsi,%rdi,4)
	movl	$0, (%rcx)
	movl	$0, (%rax)
	movl	$0, (%rbp)
	movl	$1, (%r14)
.LBB2_14:                               # %._crit_edge
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Try, .Lfunc_end2-Try
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
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	leaq	-7(%rax), %rcx
	leal	-8(%rax), %edx
	cmpl	$7, %edx
	ja	.LBB3_3
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	$1, -12(%rsp,%rax,4)
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	cmpq	$2, %rcx
	jl	.LBB3_5
# BB#4:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	$1, 100(%rsp,%rax,4)
	cmpq	$7, %rcx
	jg	.LBB3_6
.LBB3_5:                                # %.thread
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$1, 64(%rsp,%rax,4)
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	incq	%rax
	cmpq	$24, %rax
	jne	.LBB3_1
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
.Lfunc_end3:
	.size	Doit, .Lfunc_end3-Doit
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
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_2:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-7(%rax), %rcx
	leal	-8(%rax), %edx
	cmpl	$7, %edx
	ja	.LBB4_4
# BB#3:                                 #   in Loop: Header=BB4_2 Depth=2
	movl	$1, -12(%rsp,%rax,4)
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=2
	cmpq	$2, %rcx
	jl	.LBB4_6
# BB#5:                                 #   in Loop: Header=BB4_2 Depth=2
	movl	$1, 100(%rsp,%rax,4)
	cmpq	$7, %rcx
	jg	.LBB4_7
.LBB4_6:                                # %.thread.i
                                        #   in Loop: Header=BB4_2 Depth=2
	movl	$1, 64(%rsp,%rax,4)
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=2
	incq	%rax
	cmpq	$24, %rax
	jne	.LBB4_2
# BB#8:                                 # %Doit.exit
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	callq	Try
	incl	%ebp
	cmpl	$51, %ebp
	jne	.LBB4_1
# BB#9:
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Queens, .Lfunc_end4-Queens
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
	subq	$264, %rsp              # imm = 0x108
.Lcfi33:
	.cfi_def_cfa_offset 320
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
	leaq	28(%rsp), %r14
	leaq	144(%rsp), %r15
	leaq	32(%rsp), %r12
	leaq	80(%rsp), %r13
	leaq	224(%rsp), %rbx
	.p2align	4, 0x90
.LBB5_1:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
                                        #       Child Loop BB5_3 Depth 3
                                        #         Child Loop BB5_4 Depth 4
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_2:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_3 Depth 3
                                        #         Child Loop BB5_4 Depth 4
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$1, %ebp
	.p2align	4, 0x90
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_4 Depth 4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_4:                                #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_2 Depth=2
                                        #       Parent Loop BB5_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	-7(%rax), %rcx
	leal	-8(%rax), %edx
	cmpl	$7, %edx
	ja	.LBB5_6
# BB#5:                                 #   in Loop: Header=BB5_4 Depth=4
	movl	$1, 4(%rsp,%rax,4)
.LBB5_6:                                #   in Loop: Header=BB5_4 Depth=4
	cmpq	$2, %rcx
	jl	.LBB5_8
# BB#7:                                 #   in Loop: Header=BB5_4 Depth=4
	movl	$1, 116(%rsp,%rax,4)
	cmpq	$7, %rcx
	jg	.LBB5_9
.LBB5_8:                                # %.thread.i.i
                                        #   in Loop: Header=BB5_4 Depth=4
	movl	$1, 80(%rsp,%rax,4)
.LBB5_9:                                #   in Loop: Header=BB5_4 Depth=4
	incq	%rax
	cmpq	$24, %rax
	jne	.LBB5_4
# BB#10:                                # %Doit.exit.i
                                        #   in Loop: Header=BB5_3 Depth=3
	movl	$1, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	callq	Try
	incl	%ebp
	cmpl	$51, %ebp
	jne	.LBB5_3
# BB#11:                                # %Queens.exit
                                        #   in Loop: Header=BB5_2 Depth=2
	movl	12(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	$100, %eax
	jne	.LBB5_2
# BB#12:                                #   in Loop: Header=BB5_1 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	incl	%eax
	cmpl	$100, %eax
	jne	.LBB5_1
# BB#13:
	xorl	%eax, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
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

	.ident	"clang version 4.0.0 (https://github.com/aqjune/clang-freeze.git 05a224112dc7913ab2f3fda54b4b79d9c8925cb7) (https://github.com/aqjune/llvm-freeze.git 8acddda8cd1df7b14c05c64969d9fbadd0f4ff1f)"
	.section	".note.GNU-stack","",@progbits
