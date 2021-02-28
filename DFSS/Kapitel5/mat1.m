% Messwerte einlesen 
load Batteriesensor.mat;

% Berechnung der Konstante c2 über inverse t-Verteilung 
% mit 9 Freiheitsgraden 
c2 = tinv(1-1e-5,9);

% Berechnung der Prognoseintervalle nach Gleichung \eqref{eq:fivehundredfiftyfour}
ProgObenNeueShunts = mean(NeueShunts')' + ...                 
    std(NeueShunts')'*c2*sqrt(1+0.1);
ProgObenSeetransport = mean(Seetransport')' + ... 
    std(Seetransport')'*c2*sqrt(1+0.1);
ProgObenOxidation = mean(Oxidation')' + ...                 
    std(Oxidation')'*c2*sqrt(1+0.1);