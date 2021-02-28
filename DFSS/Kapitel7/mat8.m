" " " Bibliotheken importieren " " "
from scipy.io import loadmat
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

"""Laden der Daten und Initialisiseren der Variablen"""
values= loadmat('spritzguss')
d = values['d']
T = values['T']
p = values['p']/1000
S = values['s']
X = np.append(np.append(np.append(d,T,axis=0),p,axis=0),S,axis=0)

"""Kumulative Randh\"{a}ufigkeiten berechnen"""
dsort = np.append(np.append(0.0,np.sort(d)),10)
Tsort = np.append(np.append(20,np.sort(T)),130)
psort = np.append(np.append(0.4,np.sort(p)), 1.1)
Ssort = np.append(np.append(0.5,np.sort(S)), 3)
H =np.append([0,0],np.cumsum(1/len(T)*np.ones(np.shape(T))))

"""Kumulative Randh\"{a}ufigkeiten darstellen"""
f1 = plt.figure(1, figsize=(12, 8))
axes1 = f1.subplots(2,2)

axes1[0,0].step(dsort,H, color='b')
axes1[0,0].grid(True, ls='--')
axes1[0,0].set_xlabel('Wanddicke d / mm')
axes1[0,0].set_ylabel('Kumulative Randhäufigkeit H_d(d)')

axes1[0,1].step(Tsort, H,color='b')\newline axes1[0,1].grid(True, ls='--')
axes1[0,1].set_xlabel('Temperatur T / $C')
axes1[0,1].set_ylabel('Kumulative Randhäufigkeit H\$\_T\$(T)')

axes1[1,0].step(psort, H,color='b')
axes1[1,0].grid(True, ls='--')
axes1[1,0].set_xlabel('Nachdruck p / kbar')
axes1[1,0].set_ylabel('Kumulative Randhäufigkeit H_p(p)')

axes1[1,1].step(Ssort, H,color='b')
axes1[1,1].grid(True, ls='--')
axes1[1,1].set_xlabel('Schwindung S / %')
axes1[1,1].set_ylabel('Kumulative Randhäufigkeit H_S(S)')

"""Streudiagramm als Matrix"""
df = pd.DataFrame(np.transpose(X), columns=['d / mm', 'T / C', 'p / kbar', 'S / %'])
axes2 = pd.plotting.scatter_matrix(df, alpha=1,figsize=(12, 8))

"""Kennwerte berechnen"""
mX = np.mean(X, axis=1)
cX = np.cov(X)