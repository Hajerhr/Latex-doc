% Berechnung der Lagekennwerte
average = sum(class.*relFreq)
median = class(2)+1*(0.5-relSumFreq(2))/relFreq(3)

% Berechnung der Streuungskennwerte
variance = 1/(length(class)-1)*sum(absFreq.*(class-average).^2)
standardDeviation = sqrt(variance)
quartil75 = class(3)+1*(0.75 - relSumFreq(3))/relFreq(4)
quartil25 = class(2)+1*(0.25 - relSumFreq(2))/relFreq(3)
interQuartilRange = quartil75-quartil25
