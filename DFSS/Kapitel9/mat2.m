% Messwerte einlesen
load Abgleicheinrichtung.mat;
U = [U11 U12 U13 ; U21 U22 U23 ; U31 U32 U33];
U1 = [U11 U21 U31 ; U12 U22 U32 ; U13 U23 U33];

% Berechnung der ANOVA-Tabelle
[p, AnovaTab, TestStatistik] = anova2(U,3)

% Erzeugen der grafischen Plausibilisierung
f = figure(2);
% Box-Plot der Einflußgröß $\alpha$
subplot(1,2,1)
boxplot([U1(:,1) U1(:,2) U1(:,3)]);

% Box-Plot der Einflußröß $\beta$
subplot(1,2,2)
boxplot([U(:,1) U(:,2) U(:,3)]);