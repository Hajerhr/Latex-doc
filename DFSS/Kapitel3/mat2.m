% Berechnung der Lagekennwerte
average = mean(Klebermenge)
median = quantile(Klebermenge,0.5)

% Berechnung der Streuungskennwerte
variance = var(Klebermenge)
standardDeviation = std(Klebermenge)
interQuartilRange = iqr(Klebermenge)
