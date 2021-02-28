% Definition der Signalfolgen als Vektoren 
u = [2 2 1 1];
k1min = 2;
K1 = length(u);
g = [1 1 1 1 1 1];
k2min = -3;
K2 = length(g);

% Berechnung der Faltung
y = conv(u,g);

% Berechnung der entsprechenden Indizes k
kmin = k2min + k1min;
K = K1 + K2 - 1;
kc = kmin : 1 : kmin + K - 1;

% Grafische Darstellung
stem(kc,y);