% Definition der Kennwerte
p = [0.85 0.1 0.05];
N = 4;

% Wahrscheinlichkeit für eine termingerechte Auslieferung aller Schaltschränke
p = mnpdf([4 0 0;3 1 0;2 2 0;1 3 0;0 4 0], p);
P = sum(p);