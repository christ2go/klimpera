PROGRAM selectionsort

RECORD TEST
BEGIN
	x: int,
	z: real,
	n[22]: char,
	y[100]: int
END

FUNCTION main():void
VAR x:int;
VAR i:int;
VAR k:int;
VAR y:int;
VAR t:int;
VAR min:int;
VAR n[15]:int;
VAR dre[10]:TEST;
VAR z:TEST;

BEGIN
	x := 30+(4*2);
	y := 10/4/2;
	k := x;
	y := 10*k;
	
	x := 0;
	IF i == 10 THEN
	BEGIN
		i := 9;
	END
	ELSE 
	BEGIN
		i := 3;
	END;
	
	t := x;
END
