% Variablendefinition
x = 0:0.01:100;
MTBF = 20;
lambda = 1/MTBF;

% Berechnung der Wahrscheinlichkeiten
p_MTBF_Ausfall = 1 - expcdf(20,1/lambda);
p_MTBF_keinAusfall = expcdf(MTBF,1/lambda);
