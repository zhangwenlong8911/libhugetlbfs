/*
 * libhugetlbfs - direct system call for loongarch
 *
 * Author(s): Wenlong Zhang
 */
	.text

	.globl	direct_syscall
direct_syscall:
	move 	$a7, $a0
	move 	$a0, $a1
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	syscall 0
	jr	$ra

#if defined(__linux__) && defined(__ELF__)
	.section .note.GNU-stack,"",%progbits
#endif
