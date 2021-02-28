% Klasseneinteilung
class = 49:1:53

% Berechnung der Häufigkeiten
absFreq = hist(Klebermenge,class);
absSumFreq = cumsum(absFreq);
relFreq = absFreq./length(Klebermenge);
relSumFreq = cumsum(relFreq);

% Grafische Darstellung
f = figure(2);

% Relative Häufigkeit
subplot(1,2,1)
bar(class,relFreq,'b');

% Relative Summenhäufigkeit
subplot(1,2,2)
bar(class,relSumFreq,'b');
