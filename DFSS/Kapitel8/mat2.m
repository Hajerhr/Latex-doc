%%% Definition der Kennwerte %%%
p = [0.85, 0.1, 0.05]
N = 4

%%%  Punkte für termingerechte Lieferung generieren %%% 
x = ([[4, 0, 0], [3, 1, 0], [2, 2, 0], [1, 3, 0], [0, 4, 0]]);

%%%  Wahrscheinlichkeit für eine termingerechte Auslieferung aller Schaltschränke %%% 
f = multinomial.pmf(x, N, p)
P = np.sum(f)