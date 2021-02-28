""" Bibliotheken importieren"""
from scipy.stats import poisson

""" Variablendefinition """
x = 0
N = 100
p = 0.002
mu = N*p

""" Berechnung der Wahrscheinlichkeit mit der Poisson-Verteilung """
P = poisson.cdf(x,mu)
print(' ')
print('Wahrscheinlichkeit für keinen Ausfall: ', P)