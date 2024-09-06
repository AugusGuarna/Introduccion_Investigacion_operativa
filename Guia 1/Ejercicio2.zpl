set V:= {"P1","P2","P3","P4","P5","P6"};
var P[V] real;

maximize ganancia : (4.4*P["P1"]+3.8*P["P2"]+4.1*P["P3"]
+3.5*P["P4"]+5.1*P["P5"]+3.2*P["P6"]);

subto limTot : sum<i> in V: P[i]<=1000;
subto lim1 : P["P1"]<=220;
subto lim2 : P["P2"]<=180;
subto lim3 : P["P3"]<=250;
subto lim4 : P["P4"]<=150;
subto lim5 : P["P5"]<=400;
subto lim6 : P["P6"]<=120;
subto limInf5 : P["P5"]>=200;
subto minSol : P["P1"]+P["P2"]>=300;
subto pos : forall<i> in V : P[i]>=0