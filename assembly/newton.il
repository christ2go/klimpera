.assembly newton {}
.assembly extern mscorlib {}

.method static void printi (int32) cil managed
{
 ldarg 0
 call void [mscorlib] System.Console::WriteLine(int32)
 ret
} 

.method static void printr (float32)
{
 ldarg 0
 call void [mscorlib] System.Console::WriteLine(float32)
 ret
} 


.method static void printch (char)
{
 ldarg 0
 call void [mscorlib] System.Console::WriteLine(char)
 ret
} 

.method static int32 read ()
{
 call string [mscorlib] System.Console::ReadLine()
 call int32 [mscorlib] System.Int32::Parse(string)
 ret
} 

.method static float32 itf (int32)
{
	ldarg 0 
	conv.r4
	ret
}

.method static int32 fti (float32)
{
	ldarg 0 
	conv.i4
	ret
}

.method public static char readch () cil managed
{
 .locals init (
 [0] char c,
 [1] valuetype [mscorlib] System.ConsoleKeyInfo CS$0$0000
 )
 
 IL_0000: nop
 IL_0001: call valuetype [mscorlib] System.ConsoleKeyInfo [mscorlib] System.Console::ReadKey()
 IL_0006: stloc.1
 IL_0007: ldloca.s CS$0$0000
 IL_0009: call instance char [mscorlib] System.ConsoleKeyInfo::get_KeyChar()
 IL_000e: stloc.0
 ldloc 0
 IL_000f: ret
} 

.method public static 
float32 readr () cil managed 
{
 // Method begins at RVA 0x2068
 // Code size 46 (0x2e)
 .maxstack 2
 .locals init (
 [0] bool done,
 [1] string inp,
 [2] float32 s,
 [3] class [mscorlib] System.Exception e,
 [4] bool CS$4$0000
 )
 
 IL_0000: nop
 IL_0001: ldc.i4.0
 IL_0002: stloc.0
 // loop start (head: IL_0003)
 IL_0003: nop
 IL_0004: call string [mscorlib] System.Console::ReadLine()
 IL_0009: stloc.1
 .try
 {
 IL_000a: nop
 IL_000b: ldloc.1
 IL_000c: call float32 [mscorlib] System.Single::Parse(string)
 IL_0011: stloc.2
 IL_0012: ldc.i4.1
 IL_0013: stloc.0
 IL_0014: nop
 IL_0015: leave.s IL_0021
} 
 catch [mscorlib] System.FormatException
 {
 IL_0017: pop
 IL_0018: nop
 IL_0019: nop
 IL_001a: leave.s IL_0021
} 
 catch [mscorlib] System.Exception
 {
 IL_001c: stloc.3
 IL_001d: nop
 IL_001e: nop
 IL_001f: leave.s IL_0021
} 
 
 IL_0021: nop
 IL_0022: nop
 IL_0023: ldloc.0
 IL_0024: ldc.i4.0
 IL_0025: ceq
 IL_0027: stloc.s CS$4$0000
 IL_0029: ldloc.s CS$4$0000
 IL_002b: brtrue.s IL_0003
 
 IL_002d: 
 ldloc 2 
 ret
 
} 
.field public static class [mscorlib] System.Random randoom
// Random number generation
.method public static 
int32 random (int32) cil managed 
{
 
 .maxstack 3
 
 .locals init (
 [0] class [mscorlib] System.Random ,
 [1] int32 randomNumber
 )
 IL_0000: nop
 IL_0001: ldsfld class [mscorlib] System.Random randoom
 IL_0008: ldc.i4.0
 IL_0009: ldarg 0
 IL_000e: callvirt instance int32 [mscorlib] System.Random::Next(int32, int32)
 IL_0013: stloc.1
 ldloc 1
 ret
}




.method public static void main () cil managed{
.entrypoint
.locals init (char,int32[])
newobj instance void [mscorlib]System.Random::.ctor() 
 stsfld class [mscorlib]System.Random randoom 
ldc.i4 1
newarr int32
stloc 1
ldc.i4 120
stloc 0
ldloc 0
call void printch (char)
ldc.i4 97
call void printch (char)
ldc.r4 1.0
ldc.r4 4.0
call float32 average (float32,float32)
call void printr (float32)
ldloc 1
ldc.i4 100
call void dynarray (int32[],int32)
ldloc 1
ldc.i4 2
ldelem.i4
call void printi (int32)
ret
}

.method public static void dynarray (int32[],int32) cil managed{
.locals init (int32[])
ldarg 1
newarr int32
stloc 0
ldloc 0
ldc.i4 2
ldelem.i4
call void printi (int32)
ldloc 0
starg 0
ret
}

.method public static float32 square (float32) cil managed{
.locals init ()
ldarg 0
ldarg 0
mul
ret
}

.method public static float32 average (float32,float32) cil managed{
.locals init ()
ldarg 0
ldarg 1
add
ldc.r4 2.0
div
ret
}

.method public static float32 sqrt (float32) cil managed{
.locals init (float32)
ldc.r4 1.0
stloc 0
IL_WHILE_BEGIN_1:
ldloc 0
call float32 square (float32)
ldarg 0
sub
call float32 abs (float32)
ldc.r4 0.001
bge IL_WHILE_BLOCK_2
br IL_WHILE_END_3
IL_WHILE_BLOCK_2:
ldloc 0
ldloc 0
ldarg 0
div
call float32 average (float32,float32)
stloc 0
br IL_WHILE_BEGIN_1
IL_WHILE_END_3:
ldloc 0
ret
}

.method public static float32 abs (float32) cil managed{
.locals init ()
IL_if_begin_4:
ldarg 0
ldc.r4 0.0
blt IL_if_code_segment_5
br IL_if_end_6
IL_if_code_segment_5 :
ldarg 0
starg 0
IL_if_end_6:
ldarg 0
ret
}
