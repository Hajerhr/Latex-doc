""" Bibliotheken importieren"""
from scipy.stats import expon

""" Variablendefinition und Berechnung der Wahrscheinlichkeit """
lamb = 0.05
p_MTBF_Ausfall = expon.cdf(20,0,1/lamb)
p_MTBF_keinAusfall = 1 - p_MTBF_Ausfall
print(' ')
print('Wahrscheinlichkeit für Ausfall: ', p_MTBF_Ausfall)
print('Wahrscheinlichkeit für keinen Ausfall: ', p_MTBF_keinAusfall)
