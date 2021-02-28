""" Bibliotheken importieren"""
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import randint

"""Definition der Stützstellen"""
X = [1.5, 2.5, 5]
Xp = np.linspace(1,3,3)
low, high = 1, 4

""" Berechnung der Wahrscheinlichkeitsverteilung"""
p = randint.pmf(Xp,low, high)
P = randint.cdf(Xp,low, high)

""" Grafische Darstellung """
fig = plt.figure(1, figsize=(12, 4))
ax1, ax2 = fig.subplots(1,2)

ax1.plot(X, p, 'bo', ms=8, label='randint pmf')
ax1.vlines(X, 0, p, colors='b', lw=1, alpha=1)
ax1.grid(True, which='both', axis='both', linestyle='--')
ax1.axis([1, 5.5, 0, 0.35])
ax1.set_xticks(X)
ax1.set_yticks([0, 1/3])
ax1.set_yticklabels(['0', '1/3'])
ax1.set_xlabel('Zinsbetrag x / %')
ax1.set_ylabel('f(x)')
ax1.set_title('Wahrscheinlichkeitsverteilung')

ax2.plot(X, P, 'bo', ms=8, label='randint pmf')
ax2.vlines(X, 0, P, colors='b', lw=1, alpha=1)
ax2.grid(True, which='both', axis='both', linestyle='--')
ax2.axis([1, 5.5, 0, 1.05])
ax2.set_xticks(X)
ax2.set_yticks([1/3, 2/3, 1])
ax2.set_yticklabels(['1/3', '2/3', '1'])
ax2.set_xlabel('Zinsbetrag x / %')
ax2.set_ylabel('F(x)')
ax2.set_title('Verteilungsfunktion')

""" Berechnung Mittelwert """
mu = np.mean(X)
print(' ')
print('Arithmetischer Mittelwert: ', mu)
