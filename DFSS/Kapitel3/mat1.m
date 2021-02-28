% Einlesen der Messdaten
load Klebermenge.mat

% Grafische Darstellung
f = figure(1);

% Messwerte als Streudiagramm
subplot(1,2,1);
scatter(1:length(Klebermenge),Klebermenge,'bo','filled');

% Relative Summenhäufigkeit
subplot(1,2,2);
plot(sort(Klebermenge),(1:length(Klebermenge))/length(Klebermenge));
