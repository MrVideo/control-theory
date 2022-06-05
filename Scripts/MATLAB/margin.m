% Deallocazione variabili dallo spazio di lavoro
clear;

% Dichiarazione variabili
num = 1;
den = 1;
typeVec = 1;

% Richiesta del guadagno
gain = input("Guadagno: ");
num = num * gain;

% Richiesta del tipo
type = input("\nTipo della FdT di anello L(s): ");

if type ~= 0
    for i = 1:type
        typeVec = [typeVec 0];
    end

    den = conv(typeVec, den);
end

% Richiesta numero fattori
numFact = input("\nQuanti fattori ha il numeratore, guadagno escluso? ");
denFact = input("Quanti fattori ha il denominatore, poli nell'origine esclusi? ");

% Richiesta fattori numeratore (vengono richiesti soltanto i fattori di 's' nella rete stabilizzatrice nella forma (1+as))
fprintf("\nOra verranno chiesti i coefficienti 'a' di s di ciascun fattore della FdT nella forma (1 + as).");

for i = 1:numFact
    fprintf("\nFattore numero %d del numeratore\n",i);
    a = input("Coefficiente di s: ");
    num = conv(num, [a, 1]);
end

for i = 1:denFact
    fprintf("\nFattore numero %d del denominatore\n",i);
    a = input("Coefficiente di s: ");
    den = conv(den, [a, 1]);
end

% Richiesta ritardi temporali e formulazione FdT
bool = input("\nLa FdT contiene ritardi temporali? (1 - sì/0 - no) ");

if bool
    delay = input("\nInserire il modulo del ritardo di tempo: ");
    L = tf(num, den, 'InputDelay', delay)
else
    L = tf(num, den)
end

% Creazione figura dei margini di guadagno e fase
clf;
margin(L)
