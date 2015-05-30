//Test.IL
//A simple programme which prints a string on the console

.assembly extern mscorlib {}

.assembly Test
{
    .ver 1:0:1:0
}
.class private auto ansi beforefieldinit TEST
extends [mscorlib]System.Object
{
.field public static int32 x
.field public static float32 z
.field public static char[] n
.field public static int32[] y
.method public specialname rtspecialname instance void .ctor() cil managed
{
ldarg 0
ldc.i4 22
newarr char
stfld char[] TEST::n
ldarg 0
ldc.i4 100
newarr int32
stfld int32[] TEST::y
}
}
.method static void __record__array_constructor__TEST ( class TEST[] )
{
.locals init ( int32,int32 )
ldc.i4 0
stloc 0
ldarg 0
ldlen
stloc 1
IL_while_begin_1:
ldloc 0
ldloc 1
blt IL_while_start_2
br IL_while_end_3
IL_while_start_2:
ldarg 0
ldloc 0
newobj instance void TEST::.ctor()
stelem.ref
ldloc 0
ldc.i4 1
add
stloc 0
br IL_while_begin_1
IL_while_end_3:
ret
}

.method public static void main () cil managed{
.entrypoint
.locals init (int32,int32,int32,int32,int32[],class TEST[],class TEST)
ldc.i4 15
newarr int32
stloc 4
ldc.i4 10
newarr TEST
stloc 5
ldloc 5
call void __record__array_constructor__TEST ( class TEST[] )
ldloc 5
ldc.i4 2
ldelem.ref
ldc.i4 10
stfld int32 TEST::x
ldloc 6
ldfld int32[] TEST::y
ldc.i4 4
ldc.i4 1
stelem int32
ldloc 5
ldc.i4 4
ldelem.ref
ldfld int32[] TEST::y
ldc.i4 4
ldc.i4 102
stelem int32

ldloc 6
ldc.i4 9
stfld int32 TEST::x

ldloc 6
ldfld int32 TEST::x

IL_WHILE_BEGIN_4:
ldloc 0
ldc.i4 4
blt IL_WHILE_BLOCK_5
br IL_WHILE_END_6
IL_WHILE_BLOCK_5:
ldloc 0
ldc.i4 1
add
stloc 0
ldc.i4 4
stloc 1


ldstr "I am from the IL Assembly Language..."
	
	// Needs an initializor with for-loop
    call void [mscorlib]System.Console::WriteLine (string)
br IL_WHILE_BEGIN_4
IL_WHILE_END_6:
   // ldstr "I am from the IL Assembly Language..."
	
	// Needs an initializor with for-loop
    // call void [mscorlib]System.Console::WriteLine (string)
	ldloc 5
ldc.i4 4
ldelem.ref
ldfld int32[] TEST::y
ldc.i4 4
ldelem int32
call void [mscorlib]System.Console::WriteLine (int32)
    ret
}
