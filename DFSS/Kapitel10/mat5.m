% Messwerte einlesen
load Fahrzeugemissionen.mat;

% Berechnung der Kenngrössen
[R,P,RLO,RUP] = corrcoef(values)