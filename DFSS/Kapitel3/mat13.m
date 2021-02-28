""" Grafische Darstellung der relativen Häufigkeiten als Histogramm """
fig = plt.figure(2, figsize=(12, 4))
ax1, ax2 = fig.subplots(1,2)
ax1.hist(X, Klassengrenzen, histtype='bar' , color='b', weights=np.ones(N)/N, rwidth=1)
ax1.grid(True, which='both', axis='both', linestyle='--')
ax1.set_xlabel('Klebermenge m / mg')
ax1.set_ylabel('Relative Häufigkeit h(m)')
ax1.axis([48, 54, 0, 0.6])

""" Grafische Darstellung der relativen Summenhäufigkeit """
Xsort = np.append(np.append(48,np.sort(X)),54)
Psum = np.append(np.append([0,],np.arange(1,N+1)/N),1)
ax2.step(Xsort,Psum, color='b', where='post', linewidth=2)
ax2.grid(True, which= 'both', axis='both', linestyle='--')
ax2.set_xlabel('Klebermenge m / mg')
ax2.set_ylabel('Relative Summenhäufigkeit H(m)')
ax2.axis([48, 54, 0, 1])