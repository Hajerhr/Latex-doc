""" Grafische Darstellung der einzelnen Messwete als Streudiagramm """
fig = plt.figure(1, figsize=(12, 4))
ax1, ax2 = fig.subplots(1,2)
n = np.arange(1,N+1)
ax1.plot(n,X, 'bo', Linewidth = 2, label = 'Stichproben')
ax1.grid(True, which= 'both', axis='both', linestyle='--')
ax1.axis([1, N, 49, 53])
ax1.legend(loc ='upper right')
ax1.set_xlabel('Stichprobe n')
ax1.set_ylabel('Masse m / mg')

""" Erstellen eines Boxplot """
ax2.boxplot(X)
ax2.grid(True, which='both', axis='both', linestyle='--')
ax2.set_xlabel('Messreihe ')
ax2.set_ylabel('Klebermenge m / mg')
ax2.axis([0, 2, 48, 54])
