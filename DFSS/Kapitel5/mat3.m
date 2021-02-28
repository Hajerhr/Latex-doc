% Berechnung der Prognosegrenzen 
c2 = t.ppf(1-1e-5,9) 
ProgObenNeueShunts = np.mean(NeueShunts, axis=1) + np.std(NeueShunts, axis=1)*c2*np.sqrt(1+0.1) 
ProgObenOxidation = np.mean(Oxidation, axis=1) + np.std(Oxidation, axis=1)*c2*np.sqrt(1+0.1) 
ProgObenSeetransport = np.mean(Seetransport, axis=1) + np.std(Seetransport, axis=1)*c2*np.sqrt(1+0.1)

% Darstellung der Verteilung und Erstellen eines Boxplot 
fig = plt.figure(4, figsize=(6, 4)) 
ax = fig.subplots(1,1) 
ax.plot(Kraft,ProgObenNeueShunts, 'g--', Linewidth = 2, label = 'Neue Shunts') 
ax.plot(Kraft,ProgObenSeetransport, 'r:', Linewidth = 2, label = 'Seetransport') 
ax.plot(Kraft,ProgObenOxidation, 'b', Linewidth = 2, label = 'Oxidation')\newline ax.axis([0, 10000, 0, 160]); 
ax.set\_xlabel('Vorspannkraft $F_V$  / N'); 
ax.set\_ylabel('Prognose maximaler Engewiderstand $R_E$ / $\mu$$\Omega\$'); 
ax.grid(True, which='both', axis='both', linestyle='--') ax.legend(loc='upper right')