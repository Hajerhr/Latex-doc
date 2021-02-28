% Berechnung des 25%-Quartilkoeffizienten der Schiefe
quartil75 = class(3)+1*(0.75 - relSumFreq(3))/relFreq(4)
quartil50 = class(2)+1*(0.5 - relSumFreq(2))/relFreq(3)
quartil25 = class(2)+1*(0.25 - relSumFreq(2))/relFreq(3)

g25 = ((quartil75- quartil50)-(quartil50-quartil25))/(quartil75-quartil25)

% Berechnung des Momentenkoeffizienten der Schiefe
gm = 1/length(class)*sum(absFreq.*(class-average).^3)/(standardDeviation^3)