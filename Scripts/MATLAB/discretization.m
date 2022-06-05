% Inserimento funzione di trasferimento

syms s z;
fprintf("Inserisci la funzione di trasferimento del regolatore a tempo continuo in forma simbolica in s\n");
num = input("Numeratore: ");
den = input("Denominatore: ");
delay = input("Ritardo di tempo: ");
R = num/den*exp(-delay*s);

fprintf("La funzione di trasferimento è: ");
disp(R);

% Inserimento tempo di campionamento

Ts = input("Tempo di campionamento: ");

% Selezione metodo di discretizzazione

fprintf("Quale metodo di discretizzazione vuoi usare?\n");
fprintf("1. Eulero Esplicito: EE\n2. Eulero Implicito: EI\n3. Tustin: TU\n");
m = input("Selezione: ","s");

switch m
    case 'EE'
        Rstar = simplify(subs(R, s, (z-1)/Ts));
    case 'EI'
        Rstar = simplify(subs(R, s, (z-1)/(z*Ts)));
    case 'TU'
        Rstar = simplify(subs(R, s, (2/Ts)*(z-1)/(z+1)));
    otherwise
        fprintf("\nHai immesso dei caratteri non validi. Riprova.\n");
end

fprintf("La funzione di trasferimento discretizzata è: ");
disp(Rstar);