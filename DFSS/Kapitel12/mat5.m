% Definition der Funktion idcalc zur Berechnung des Diodenstroms als Funktion 
% von Parametern 
function [id] = Idcalc(beta,u);

% Auflösen des Parametervektors beta
iscalc = beta(1));
utcalc = beta(2);
ncalc = beta(3));

% Berechnung des Diodenstroms
id = iscalc*(exp(u/ncalc/utcalc)-1)*1000;