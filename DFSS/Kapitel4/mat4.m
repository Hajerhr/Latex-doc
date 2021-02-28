""" Bibliotheken importieren"""
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import binom

""" Variablendefinition """
p = 0.97
N = np.linspace(30,40,11);
S = 1 - binom.cdf(29,N,p);

""" Grafische Darstellung """
fig = plt.figure(1, figsize=(6, 4))
ax1 = fig.subplots(1,1)

ax.plot(N, S, 'bo', ms=8, label='randint pmf')
ax.vlines(N, 0, S, colors='b', lw=1, alpha=1)
