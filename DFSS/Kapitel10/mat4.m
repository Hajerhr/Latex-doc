""" Bibliotheken importieren"""
import numpy as np
import pandas as pd
import scipy.stats  as stats
from scipy.io import loadmat
from scipy.stats import norm

""" Stichprobenwerte aus Aufgabe übernehmen und als Dataframe speichern """
data = loadmat('Lagerspiel')
df = pd.DataFrame('w': data['values'][1,:],
                  'p': data['values'][2,:])

""" Berechnung Korrelation und des Hypothesentests roh = 0 """
Corr, p = stats.pearsonr(df['w'],df['p'])

""" Berechnung des Konfidenzbereichs """
N = np.size(df['w'])
gamma = 0.95
c1 = norm.ppf((1-gamma)/2)
c2 = norm.ppf((1+gamma)/2)
roh1 = np.tanh(np.arctanh(Corr)-c2/np.sqrt(N-3))
roh2 = np.tanh(np.arctanh(Corr)-c1/np.sqrt(N-3)) 