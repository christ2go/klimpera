.class test
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

.method public static print(F)V 
    .limit locals 5 
    .limit stack 5 
    fload 0 
    getstatic java/lang/System/out Ljava/io/PrintStream; 
    swap 
    invokevirtual java/io/PrintStream/print(F)V 
    return 
.end method



.method public static testl()F
	.limit locals 4
	.limit stack 32
	ldc 5
	ldc 14
	imul
	newarray float
	astore 2
	ldc 15
	newarray int
	astore 3
	aload 2
	ldc 14
	ldc 2.3
	fastore
	aload 3
	ldc 1
	ldc 23
	iastore
	ldc 145
	istore 1
	ldc 3
	ldc 4
	ldc 2
	imul
	iadd
	istore 1
	aload 2
	ldc 14
	faload
	ldc 1.0
	fsub
	freturn
.end method
.method public static main([Ljava/lang/String;)V
; Index nach uebergebenen Variablen: 0
	ldc 0
	istore 0 ; x
	.limit stack 40
	.limit locals 1
	invokestatic test.testl()F
	invokestatic test.print(F)V
	; ireturn 
	return
.end method

