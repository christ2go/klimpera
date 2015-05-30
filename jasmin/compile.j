.class TEST
.super java/lang/Object
.method public static print(I)V 
    .limit locals 5 
    .limit stack 5 
    iload 0 
    getstatic java/lang/System/out Ljava/io/PrintStream; 
    swap 
    invokevirtual java/io/PrintStream/print(I)V 
    return 
.end method

.method public static factorial(I)V
	.limit locals 1
	.limit stack 10
	ldc 10
	ldc 20
	iadd
	invokestatic TEST.print(I)V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit locals 10
	ldc 20
	invokestatic TEST.factorial(I)V
	pop
.end method