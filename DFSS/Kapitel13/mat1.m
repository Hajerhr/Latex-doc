% Berechnung der Regressionsparameter über Matrizengleichung
X = [ones(size(T)) RF T RF.*T RF.$\mathrm{\wedge}$2 T.$\mathrm{\wedge}$2];
bmat = inv(X'*X)*X'*Cp;
Cpres = Cp - X*bmat;

% Erstellen einer Matrix mit den neuen Beobachtungen
xneu = [];
for rf = 10:10:90
    for t = 10:10:90
        xneu = [xneu; [1 rf t rf*t rf$\mathrm{\wedge}$2
    t$\mathrm{\wedge}$2]];
    end;
end;

% Berechnung des Erwartungswertes für gegebenes alpha
gamma = 0.95;
FG = length(X) - length(bmat);
CpEmin = [];
CpEmax = [];
for n = 1:length(xneu)
    x0 = xneu(n,:)';
    CpEmin = [CpEmin bmat'*x0 + ...
        tinv((1-gamma)/2,FG)*sqrt(Cpres'*Cpres/FG)*sqrt(x0'*inv(X'*X)*x0)];     
    CpEmax = [CpEmax bmat'*x0 + ...
        tinv((1+gamma)/2,FG)*sqrt(Cpres'*Cpres/FG)*sqrt(x0'*inv(X'*X)*x0)]; 
end;