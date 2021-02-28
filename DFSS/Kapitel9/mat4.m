% Messwerte einlesen
load Homogenitaetsbestimmung.mat;

% Berechnung der ANOVA-Tabelle
[p, AnovaTab, TestStatistik] = anova1([c\_Netz;c\_Punkt],'on')