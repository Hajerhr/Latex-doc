""" Bibliotheken importieren"""
import pandas as pd
import matplotlib.pyplot as plt
from scipy.io import loadmat

""" Stichprobenwerte aus Aufgabe übernehmen und als Dataframe speichern """
data = loadmat('Fahrzeugemissionen')
df = pd.DataFrame('H': data['values'][:,0],
                  'P': data['values'][:,1],
                  'M': data['values'][:,2],
                  'E': data['values'][:,3])
                  
""" Grafische Darstellung als Streudiagramm-Matrix"""
fig = plt.figure(1, figsize=(12,8))
fig.suptitle('')
ax1 = fig.subplots(1,1)
ax1= pd.plotting.scatter\_matrix(df, alpha=1,Color='b', hist\_kwds=dict(Color='b'))

""" Berechnung Korrelation und des Hypothesentests roh = 0 """
Corr1 = df.corr(method='pearson'))