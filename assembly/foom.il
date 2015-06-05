.assembly foom {}
.assembly extern mscorlib {}

.method public static float32[] main (int32[],int32) cil managed{
.entrypoint
.locals init (int32,float32[],int32[])
ldc.i4 5
ldc.i4 14
mul
newarr float32
stloc 1
ldc.i4 15
newarr int32
stloc 2
ldc.i4 133
stloc 0
ldloc 1
ldc.i4 2
ldc.r4 23.45
ldc.r4 0.75
add
ldloc 1
ldc.i4 1
ldelem.r4
add
stelem.r4
ldloc 2
ldc.i4 4
call float32[] main (int32[],int32)
stloc 1
IL_if_begin_1:
ldloc 1
ldc.i4 4
ldelem.r4
ldc.r4 1.0
beq IL_if_code_segment_2
br IL_if_else_3
IL_if_code_segment_2 :
ldc.i4 12
stloc 0
br IL_if_end_4
IL_if_else_3:
ldc.i4 44
stloc 0
IL_if_end_4:
ldloc 1
ret
}
