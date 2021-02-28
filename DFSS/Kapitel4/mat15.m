% Variablendefinition
N = 10000;
mu = 998;
sigma = 5;

% Berechnung des Ausschussanteils von Kunde A und B ohne Zentrierung
A_A = normcdf((990-mu)/sigma) + 1 - normcdf((1010-mu)/sigma);
A_A = normcdf((980-mu)/sigma) + 1 - normcdf((1020-mu)/sigma);

% Berechnung des Ausschussanteils von Kunde A und B nach Zentrierung
mu_neu = 1000;

A_A = normcdf((990-mu_neu)/sigma) + 1 - normcdf((1010-mu_neu)/sigma);
A_A = normcdf((980-mu_neu)/sigma) + 1 - normcdf((1020-mu_neu)/sigma);
