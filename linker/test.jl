.class selectionsort
.method public static main()V
.limit locals 5
.limit stack 32
ldc 15
newarray int
astore 0
; Forschleife
ldc 0
istore 1
ldc 0
istore 1
label_for_start1:
ldc 15
iload 1
if_icmplt label_end_start2
aload 0
iload 1
ldc 300
random random(I)I
invokestatic selectionsort.random(I)I
iastore
iload 1
ldc 1
iadd
istore 1
goto label_for_start1
label_end_start2:
; Forschleife
ldc 0
istore 1
ldc 0
istore 1
label_for_start3:
ldc 15
iload 1
if_icmplt label_end_start4
aload 0
iload 1
iaload
printi printi(I)V
invokestatic selectionsort.printi(I)V
ldc 13
i2c i2c(I)C
invokestatic selectionsort.i2c(I)C
printch printch(C)V
invokestatic selectionsort.printch(C)V
iload 1
ldc 1
iadd
istore 1
goto label_for_start3
label_end_start4:
; Forschleife
ldc 0
istore 1
ldc 0
istore 1
label_for_start5:
ldc 15
iload 1
if_icmplt label_end_start6
iload 1
istore 4
iload 1
ldc 1
iadd
istore 1
goto label_for_start5
label_end_start6:
; Forschleife
iload 1
ldc 1
iadd
istore 2
iload 1
ldc 1
iadd
istore 2
label_for_start7:
ldc 15
iload 2
if_icmplt label_end_start8
; IF Statement
aload 0
iload 2
iaload
aload 0
iload 4
iaload
if_icmplt if-begin9
goto if-end10
if-begin9:
iload 2
istore 4
if-end10:
iload 2
ldc 1
iadd
istore 2
goto label_for_start7
label_end_start8:
aload 0
iload 4
iaload
istore 3
aload 0
iload 4
aload 0
iload 1
iaload
iastore
aload 0
iload 1
iload 3
iastore
.end method