M1=tf(0.1383,[130 1]);
M2=tf(0.1383,conv([130 1],[10 1]));
M3=tf(0.1383*[5 1],conv(conv([130 1],[10 1]),[2 1]));
M4=tf(0.1383*[4 1],conv(conv([110 1],[12 1]),[2 1]));


Ti=130;
mu=0.1383
K=5/120*Ti/mu;
R1=K*(1+tf(1,[Ti 0]));
step(R1*M1/(1+R1*M1),150);

[gm,pm,wu,wc]=margin(R1*M1);[wc,pm]
[gm,pm,wu,wc]=margin(R1*M2);[wc,pm]
[gm,pm,wu,wc]=margin(R1*M3);[wc,pm]
[gm,pm,wu,wc]=margin(R1*M4);[wc,pm]

subplot(211); step(R1*M1/(1+R1*M1),R1*M2/(1+R1*M2),R1*M3/(1+R1*M3),150);
legend("M1","M2","M3");
subplot(212); step(R1/(1+R1*M1),R1/(1+R1*M2),R1/(1+R1*M3),150);
legend("M1","M2","M3");

clf; bode(M1,M2,M3,M4);

Ti=130;
mu=0.1383;
K2=0.005*Ti/mu;
R2=K2*(1+tf(1,[Ti 0]));

subplot(211); step(R2*M1/(1+R2*M1),R2*M2/(1+R2*M2),R2*M3/(1+R2*M3),1000);
legend("M1","M2","M3");
subplot(212); step(R2/(1+R2*M1),R2/(1+R2*M2),R2/(1+R2*M3),1000);
legend("M1","M2","M3");

Ti=130; K3=0.5*Ti/mu; R3=K3*(1+tf(1,[Ti 0]));
subplot(211);
step(R3*M1/(1+R3*M1),R3*M2/(1+R3*M2),R3*M3/(1+R3*M3),R3*M4/(1+R3*M4),50);
subplot(212);
step(R3/(1+R3*M1),R3/(1+R3*M2),R3/(1+R3*M3),R3/(1+R3*M4),50);

R4=1/M2*tf(1,conv([10 0],[2 1]))
[gm,pm,wu,wc]=margin(R4*M2);[wc,pm]

bode(R4,99.78*(1+tf(1,[138 0])+tf([7.42 0],[7.42/3.71 1])))