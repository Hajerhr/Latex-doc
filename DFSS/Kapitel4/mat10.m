""" Bibliotheken importieren"""
from scipy.stats import geom

""" Variablendefinition """
p0 = 0.0002
mu = 1/p0

""" Berechnung der Wahrscheinlichkeit mit der Poisson-Verteilung """
P = geom.cdf(mu,p0);
print(' ')
print('Wahrscheibnlichkeit für defekt innerhalb 5000 Zyklen: ', P)
