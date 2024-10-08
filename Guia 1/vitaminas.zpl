set I := {1..3};
set J := {"vitA", "vitC", "vitD"};
var x[I]; 
param c[I*J] := | "vitA", "vitC", "vitD" |
|1| 30, 10, 40|
|2| 20, 15, 30|
|3| 40, 5, 20|; 
param p[I] := <1> 0.15, <2> 0.10, <3> 0.12; 
param rdm[J] := <"vitA"> 300, <"vitC"> 120, <"vitD"> 210; 
minimize costo: sum <i> in I: p[i]/30 * x[i];
subto r1: sum <i> in I: x[i] >= 225;
subto r2: forall <j> in J: sum <i> in I: (c[i,j]/3000*x[i]) >= rdm[j]/1000;