% Variablendefinition
x = 0;
N = 100;
p = 0.002;
mu = N*p;

% Berechnung der Wahrscheinlichkeit mit der Binomial-Verteilung
P_binomial = binocdf(x,N,p);

% Berechnung der Wahrscheinlichkeit mit der Poisson-Verteilung
P_poisson = poisscdf(x,mu);