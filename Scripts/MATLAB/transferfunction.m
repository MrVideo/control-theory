% Inserimento matrici
A = input("Inserire matrice A (per righe, colonne separate da ;): ");
b = input("Inserire vettore colonna b: ");
c = input("Inserire vettore riga c: ");
d = input("Inserire scalare d: ");

% Ritardi temporali
bool = input("Sono presenti ritardi temporali? (1: sì/0: no): ");
if bool == 1
    delay = input("Inserire modulo del ritardo temporale: ");
end

% Dichiarazione simbolo s
syms s;

% Calcolo funzione di trasferimento
sizeVec = size(A);
G = c*(s*eye(sizeVec(1))-A)^-1*b + d;
if bool == 1
    G = G * exp(-delay*s);
end

% Stampa funzione di trasferimento
fprintf("La funzione di trasferimento è: ");
disp(simplify(G));