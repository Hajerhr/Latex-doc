% Messwerte einlesen
load Kondensatorfertigung.mat;

% Berechnung der ANOVA-Tabelle
[p, AnovaTab, TestStatistik] = anova1(data,'on')

% Erzeugen des Box-Plot
boxplot([data(:,1) data(:,2) data(:,3)])