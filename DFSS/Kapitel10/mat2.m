""" Bibliotheken importieren"""
import pandas as pd
from scipy.io import loadmat

""" Laden der Daten """ 
""" Formatierung als Dataframe und Berechnung der Korrelation """
data = loadmat('ZugfestigkeitFasern')
df = pd.DataFrame('Trocknungszeit': data['values'][:,1],
'Zugfestigkeit': data['values'][:,2])
Corr = round((df.corr(method='pearson')).loc['Trocknungszeit','Zugfestigkeit'],3