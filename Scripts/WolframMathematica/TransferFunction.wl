(* ::Package:: *)

A = Input["Inserisci la matrice quadrata A: "];
b = Input["Inserisci il vettore colonna b: "];
c = Input["Inserisci il vettore riga c: "];
d = Input["Inserisci lo scalare d: "];
t = Input["Inserisci il ritardo di tempo: "];

d1 = Dimensions[A][[1]];
d2 = Dimensions[A][[2]];

if[d1 = d2,tf = Together[(c . Inverse[(s*IdentityMatrix[d1]-A)] . b+d)*Exp[-t*s]],"La matrice A non \[EGrave] quadrata"];

Print["La funzione di trasferimento \[EGrave] ",tf];
