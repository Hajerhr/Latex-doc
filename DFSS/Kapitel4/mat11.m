% Geschwindigkeitsvektor erzeugen
dv = 0.01;
v = 5:dv:15;
 
% Variablendefinition Leistungsberechnung
roh = 1.2;
r = 5;
A = pi*r^2;
cp = 0.48;
 
% Leistungsberechnung über Riemannsche Summe
P1 = sum(0.5 * cp * roh * A * v.^3.*wblpdf(v,10,2)*dv)
P2 = sum(0.5 * cp * roh * A * v.^3.*wblpdf(v,10,3)*dv)
