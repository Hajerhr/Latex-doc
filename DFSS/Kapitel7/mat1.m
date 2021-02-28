% Messwerte einlesen 
load Fertigung.mat;

% Grafische Darstellung der Fertigungsdaten als dreidimensionales Säulendiagramm 
figure(1);

bar3(ZRel,0.25);