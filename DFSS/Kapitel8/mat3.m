% Definition der Kennwerte
Mu = [1000 3.85e-3];
Sigma = [25 1.63e-3; 1.63e-3 0.25e-6];
pF_A = mvncdf([1025 3.95e-3; 975 3.95e-3; 1025 3.75e-3; 975 3.75e-3], Mu, Sigma);
pF_B = mvncdf([1050 4.04e-3; 950 4.04e-3; 1050 3.66e-3; 950 3.66e-3], Mu, Sigma);

% Prozentualer Ausschuss von Kunde A
Ausschuss_A = 1 - (pF_A(1) - pF_A(2) - pF_A(3) + pF_A(4));
Ausschuss_B = 1 - (pF_B(1) - pF_B(2) - pF_B(3) + pF_B(4));