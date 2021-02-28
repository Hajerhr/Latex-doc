%%%Bibliotheken importieren%%%
from scipy.stats import multivariate_normal
import numpy as np

%%%Werte aus Aufgabe übernehmen%%%
muR = 1000
varR = 25
muAlpha = 3.85e-3
varAlpha = 0.25e-6
covRAlpha = 1.63e-3

%%%Definition der entsprechenden Verteilung%%%
rv = multivariate\_normal([muR, muAlpha], [[varR, covRAlpha], 
[covRAlpha, varAlpha]])

%%%Berechnung der gesuchten Wahrscheinlichkeit%%%
PA = rv.cdf([1025,3.95e-3]) - rv.cdf([975,3.95e-3]) - rv.cdf([1025,3.75e-3]) + rv.cdf([975,3.75e-3])
PB = rv.cdf([1050,4.04e-3]) - rv.cdf([950,4.04e-3]) - rv.cdf([1050,3.66e-3]) + rv.cdf([950,3.66e-3])

%%%Ausgabe%%%
print(' ')
print('Ausschuss Kunde A: ', 1-PA)
print('Ausschuss Kunde B: ', 1-PB)