;
;	Example Jasmin Compilation for square
;
;

; Standard Library
.class square
.super java/lang/Object ; Immer so

.method public static print(I)V 
    .limit locals 5 
    .limit stack 5 
    iload 0 
    getstatic java/lang/System/out Ljava/io/PrintStream; 
    swap 
    invokevirtual java/io/PrintStream/print(I)V 
    return 
.end method

; Example Program
.method public static main([Ljava/lang/String;)V
	.limit locals 400
    .limit stack 400
    ; Declare Variables
    ldc 0
    istore 1 ; squ auf 1
    ldc 0
    istore 2 ; x auf 2
    goto main
    square:
    	istore 1 ; Return adress stored in 1
    	istore 2 ; Store the number to square in 2
    	
    	invokestatic square.print(I)V
    	ret 1 ; Return to local variable 10
    main:
    ldc 2
    jsr square
    invokestatic square.print(I)V
    return
.end method