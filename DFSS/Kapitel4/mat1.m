% Variablendefinition
x = [1.5 2.5 5];

% Berechnung der Wahrscheinlichkeitsverteilung und der Verteilungsfunktion
p = unidpdf(1:3,3);
P = unidcdf(1:3,3);

% Grafische Darstellung
figure(1);
subplot(1,2,1);
stem(x,p);
subplot(1,2,2);
stem(x,P);

% Berechnung des Mittelwertes
mu = mean(x);