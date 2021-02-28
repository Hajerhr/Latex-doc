% Definition der symbolischen Variablen
syms f t s x X;

% Definition der Kosinusfunktion
x = cos(2*pi*f*t);

X = laplace(x,t,s);
pretty(simple(X))

        s
  -------------
      2 2   2
   4 pi f + s