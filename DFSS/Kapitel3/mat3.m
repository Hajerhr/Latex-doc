% Berechnung des 25%-Quartilkoeffizienten der Schiefe
q = quantile(Klebermenge,[0.25 0.5 0.75]);
g25 = ((q(3)-q(2))-(q(2)-q(1)))/(q(3)-q(1))

% Berechnung des Momentenkoeffizienten der Schiefe
gm = skewness(Klebermenge)
