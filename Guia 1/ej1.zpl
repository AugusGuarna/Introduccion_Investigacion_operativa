set NumeroAlimentos := {1..3};
set Vitaminas := {"A", "C", "D"};

param TablaNutricional[NumeroAlimentos*Vitaminas] := |"A", "C", "D"|
                                                  |1| 0.03, 0.01, 0.040|
                                                  |2| 0.020, 0.015, 0.030|
                                                  |3| 0.040, 0.005, 0.020|;

param Costo[NumeroAlimentos] := <1> 0.15, <2> 0.10, <3> 0.12;

param RDM[Vitaminas] := <"A"> 0.300, <"C"> 0.120, <"D"> 0.210;

var X[NumeroAlimentos];

minimize costo: sum <i> in NumeroAlimentos: (Costo[i]/30) * X[i];

subto r1: forall <i> in NumeroAlimentos: X[i] >= 0;
subto r2: sum <i> in NumeroAlimentos: X[i] >= 225;
subto r3: forall<j> in Vitaminas: sum <i> in NumeroAlimentos: (TablaNutricional[i,j]/30)*X[i] >= RDM[j];
