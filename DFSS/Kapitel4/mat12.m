""" Bibliotheken importieren"""
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import weibull_min

""" Geschwindigkeitsvektor erzeugen """
dv = 0.01
v = np.arange(5 , 15+dv , dv)

""" Variablendefinition Leistungsberechnung """
roh = 1.2
r = 5
A = np.pi*r**2
cp = 0.48
P = 0.5 * cp * roh * A * v**3

""" Variablendefinition Weibullverteilung """
beta = [2, 3]
eta = 10
fw = np.empty((len(beta),len(v)))
for k in [0,1]:
        fw[k,:] = weibull_min.pdf(v, beta[k], 0, eta)

""" Berechnung der Leistungen """
P1 = np.sum(P*fw[0,:]*dx)
P2 = np.sum(P*fw[1,:]*dx)
print(' ')
print('Mittlere Leistung Europa: ', P1)
print('Mittlere Leistung Passatwinde: ', P2)
