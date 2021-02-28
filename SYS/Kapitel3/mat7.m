% Definition der gebrochen rationalen Funktion ueber Koeffizienten-Vektoren
b = [1 0];
a = [1 3 2];

% Berechnung der Partialbrueche
[r,p,k] = residue(b,a)
r = [2 -1]
p = [-2 -1]
k = []