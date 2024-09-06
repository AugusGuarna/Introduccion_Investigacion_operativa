set NumProyect := {1..6};

param Financiamiento[NumProyect] := <1> 220, <2> 180, <3> 250, <4> 150, <5> 400, <6> 120;
param Utilidad[NumProyect] :=  <1> 4.4, <2> 3.8, <3> 4.1, <4> 3.5, <5> 5.1, <6> 3.2;

var X[NumProyect];

maximize costo: sum <i> in NumProyect: Utilidad[i]*X[i];

subto r1: forall <j> in NumProyect: X[j] >= 0;
subto r2: sum <i> in NumProyect: Financiamiento[i]*X[i] <= 1000;
subto r3: X[5] >= 0.5 * 400;
subto r4: X[1] + X[2] >= 300;
