""" Berechnung der absoluten und relativen Häufigkeit sowie der absoluten"""
""" und relativen Summenhäufigkeit"""
X_freq, Klassengrenzen = np.histogram(X, bins=np.arange(np.floor(X_min)-0.5, np.ceil(X_max)+1.5))
X_rel_freq = X_freq/N
X_sum_freq = np.cumsum(X_freq)
X_rel_sum_freq = X_sum_freq/N
Klassenmitten = np.arange(np.floor(X_min),np.ceil(X_max)+1)

""" Generieren einer Tabelle in Pandas und Ausgabe der Tabelle"""
Tabelle = pd.DataFrame({'Gruppenwert':Klassenmitten, 
                        'Absolute Häufigkeit hA(x)':X_freq,
                        'RelativeHaeufigkeit h(x)':X_rel_freq,
                        'Absolute Summenhäufigkeit HA(x)':X_sum_freq,
                        'Relative Summenhäufigkeit H(x)':X_rel_sum_freq})
print(' ')
print(Tabelle)
