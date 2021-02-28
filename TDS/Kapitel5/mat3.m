% Definition der symbolischen Variablen
syms x X k z;

% Definition der Folge
x = 2*heaviside(k) + 5*3^(k-1)*heaviside(k-1) + (heaviside(k-3)-heaviside(k-4));