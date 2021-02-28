% Variablendefinition
p = 0.97;
N = 30:40;

% Berechnung der Versorgungssicherheit
S = 1 - binocdf(30,N,p);

% Grafische Darstellung
stem(N,S);
