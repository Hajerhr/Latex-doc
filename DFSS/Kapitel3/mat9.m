"""Einlesen und Umsortieren der Daten aus dem .mat-file"""
data = loadmat('Klebermenge')['data']
X = np.array(data).reshape(data.shape[0]*data.shape[1])
