.assembly selectionsort {}
.assembly extern mscorlib {}
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

.method public static void main (int32,class TEST[]) cil managed{
.entrypoint
.locals init (int32,int32,int32,int32,int32,int32,int32,int32[],class TEST[],class TEST,float32)
newobj instance void [mscorlib]System.Random::.ctor() 
 stsfld class [mscorlib]System.Random randoom] 
ldc.i4 15
newarr int32
stloc 7
ldc.i4 10
newarr TEST
stloc 8
ldloc 8
call void __record__array_constructor__TEST ( class TEST[] )
ldc.i4 1
ldloc 8
call void main (int32,classselectionsort::TEST[])
ldc.i4 0
starg 0
IL_if_begin_4:
ldloc 2
ldc.i4 10
beq IL_if_code_segment_5
br IL_if_else_6
IL_if_code_segment_5 :
ldc.i4 9
stloc 2
br IL_if_end_7
IL_if_else_6:
ldc.i4 10
stloc 2
IL_if_end_7:
ldarg 0
stloc 2
call float32 readr ()
stloc 10
}

.method public static int32[] teste (int32) cil managed{
.locals init (int32[],float32)
ldc.i4 10
newarr int32
stloc 0
ldloc 0
ldc.i4 3
ldc.i4 10
stelem.i4
ldloc 0
ldc.i4 5
call int32 read ()
stelem.i4
ldloc 0
ldc.i4 2
ldelem.i4
call void printi (int32)
IL_if_begin_8:
ldarg 0
ldc.i4 4
beq IL_if_code_segment_9
br IL_if_else_10
IL_if_code_segment_9 :
ldloc 0
ldc.i4 4
ldloc 0
ldc.i4 2
ldelem.i4
stelem.i4
br IL_if_end_11
IL_if_else_10:
ldc.i4 21
starg 0
IL_if_end_11:
ldloc 0
ldc.i4 2
ldc.i4 14
stelem.i4
ldc.i4 10
starg 0
IL_forbegin_12:
ldarg 0
ldc.i4 14
bgt IL_forend_13
ldc.i4 23
starg 0
ldarg 0
ldc.i4 1
add
starg 0
br IL_forbegin_12
IL_forend_13:
ldloc 0
ret
}
// Methoden der Standardbibliothek
.method static void printi (int32)
{ldarg 0 call void [mscorlib] System.Console::WriteLine(int32) ret}

.method static void printr (float32)
{ldarg 0 call void [mscorlib] System.Console::WriteLine(float32) ret}

.method static void printch (char)
{ldarg 0 call void [mscorlib] System.Console::WriteLine(char) ret}

.method static int32 read ()
{call string [mscorlib] System.Console::ReadLine() call int32 [mscorlib] System.Int32::Parse(string) ret}

.method public static char readch () cil managed
{.locals init ( [0] char c, [1] valuetype [mscorlib] System.ConsoleKeyInfo CS$0$0000 ) IL_0000: nop IL_0001: call valuetype [mscorlib] System.ConsoleKeyInfo [mscorlib] System.Console::ReadKey() IL_0006: stloc.1 IL_0007: ldloca.s CS$0$0000 IL_0009: call instance char [mscorlib] System.ConsoleKeyInfo::get_KeyChar() IL_000e: stloc.0 ldloc 0 IL_000f: ret}

.method public static
float32 readr () cil managed
{// Method begins at RVA 0x2068 // Code size 46 (0x2e) .maxstack 2 .locals init ( [0] bool done, [1] string inp, [2] float32 s, [3] class [mscorlib] System.Exception e, [4] bool CS$4$0000 ) IL_0000: nop IL_0001: ldc.i4.0 IL_0002: stloc.0 // loop start (head: IL_0003) IL_0003: nop IL_0004: call string [mscorlib] System.Console::ReadLine() IL_0009: stloc.1 .try {IL_000a: nop IL_000b: ldloc.1 IL_000c: call float32 [mscorlib] System.Single::Parse(string) IL_0011: stloc.2 IL_0012: ldc.i4.1 IL_0013: stloc.0 IL_0014: nop IL_0015: leave.s IL_0021} catch [mscorlib] System.FormatException {IL_0017: pop IL_0018: nop IL_0019: nop IL_001a: leave.s IL_0021} catch [mscorlib] System.Exception {IL_001c: stloc.3 IL_001d: nop IL_001e: nop IL_001f: leave.s IL_0021} IL_0021: nop IL_0022: nop IL_0023: ldloc.0 IL_0024: ldc.i4.0 IL_0025: ceq IL_0027: stloc.s CS$4$0000 IL_0029: ldloc.s CS$4$0000 IL_002b: brtrue.s IL_0003 IL_002d: ldloc 2 ret}
.field public static class [mscorlib] System.Random randoom
// Random number generation
.method public static
int32 random (int32) cil managed
{.maxstack 3 .locals init ( [0] class [mscorlib] System.Random , [1] int32 randomNumber ) IL_0000: nop IL_0001: ldsfld class [mscorlib] System.Random randoom IL_0008: ldc.i4.0 IL_0009: ldarg 0 IL_000e: callvirt instance int32 [mscorlib] System.Random::Next(int32, int32) IL_0013: stloc.1 ldloc 1 ret}
