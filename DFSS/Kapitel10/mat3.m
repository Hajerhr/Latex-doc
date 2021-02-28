% Messwerte einlesen
load Lagerspiel.mat;

% Berechnung der Kenngrössen 
[R,P,RLO,RUP] = corrcoef([p w]) 