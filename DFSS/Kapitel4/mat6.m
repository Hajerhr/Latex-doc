""" Bibliotheken importieren"""
from scipy.stats import hypergeom

""" Variablendefinition """
M = 100
G = 10
N = 10

""" Berechnung der Wahrscheinlichkeit """
P = 1 - hypergeom.pmf(0,M,G,N)
print(' ')
print('Wahrscheinlichkeit für eine ungerechtfertigte Reklamation : ', P)
