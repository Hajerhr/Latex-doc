% Messwerte einlesen 
load ChemischeIndustrie.mat;

% Grafische Darstellung der Messdaten als Streudiagramm
figure(1);

scatter3(values(:,1),values(:,2),values(:,3),'ob','filled');