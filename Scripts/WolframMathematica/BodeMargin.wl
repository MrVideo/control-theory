(* ::Package:: *)

L = TransferFunctionModel[Input["Inserire la Funzione di Trasferimento d'anello L(s)"],s];
Bode = BodePlot[L,{0.01,100},StabilityMargins->True]
{gm,pm} = GainPhaseMargins[L];
wc = N[pm[[1]][[1]]];
gm = gm[[1]][[2]];
pm = N[pm[[1]][[2]]/Degree];
Print["Fase critica: ",wc];
Print["Margine di guadagno: ",gm];
Print["Margine di fase: ",pm];



