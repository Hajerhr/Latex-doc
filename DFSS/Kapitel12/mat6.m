% Definition der Zahlenwerte
ud = [0 0.1 0.2 0.3 0.4 0.5 0.55 0.6 0.65 0.7];

% Definition der wahren Parameter und des wahren Diodenstroms
is = 1e-9;
ut = 27e-3;
n = 1.3;
id = (is*(exp(ud/n/ut)-1))*1000;

% Aufruf der nichtlinearen Approximation
[betahat,R,J] = nlinfit(ud, id, @Idcalc, beta);

% Interpretation des Parametervektors
isa = betahat(1);
uta = betahat(2);
na = betahat(3);

% Berechnung des Regressionsergebnisses
idapp = (isa*(exp(udint/na/uta)-1))*(1000+10*rand);