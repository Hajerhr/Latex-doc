% Definition der symbolischen Variablen
syms f TA k z x X;

% Definition der Kosinusfolge
x = cos(2*pi*f*k*TA);

X = ztrans(x,k,z);
pretty(simple(X))
                              2
                             z  - z cos(2 pi f TA)
                          ---------------------------
                                                    2
                          1 - 2 z cos(2 pi f TA) + z
