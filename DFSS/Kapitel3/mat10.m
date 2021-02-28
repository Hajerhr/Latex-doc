"""Bestimmung Datenumfang"""
Xmin = np.amin(X)
Xmax = np.amax(X)
N = X.shape[0]

"""Berechnen der Lagekennwerte Mittelwert und Median"""
X_mean = np.mean(X)
print(' ')
print('Arithmetischer Mittelwert: ', X_mean)
X_med = np.median(X)
print('Median:', X_med )

""" Berechnen der Streuungskennwerte Stadardabweichung, Varianz und """
""" Inter-Quartil-Range, bei Varianz muss die Anzahl der Freiheitsgrade"""
""" auf N - 1 angepasst werden"""
X_var = np.var(X, ddof=1)
print(' ')
print('Varianz: ', X_var)
X_std = np.std(X,ddof=1)
print('Standardabweichung: ', X_std)
X_iqr = np.quantile(X,0.75) - np.quantile(X,0.25)
print

"""Berechnen der Schiefe"""
X_skew_mom = skew(X)
print(' ')
print('Momentenkoeffizient der Schiefe: ', X_skew_mom )
X_skew_qua = (np.quantile(X,0.75) - 2*np.quantile(X,0.5) + np.quantile(X,0.25))/X_iqr
print('Quartilkoeffizient der Schiefe: ', X_skew_qua )
