% Definition der Stichprobe: Spannungsvektor gekürzt 
T = 0:10:100; 
U = [2.7660 2.8626 ... 4.1887 4.1659];

% Regressionsfunktion der Ordnung 1 mit Konfidenz- und Prognosebereich 
[P,s] = polyfit(T,U,1); 
[Ureg,delmean] = polyconf(P,T,s,'alpha',0.05,'predopt','curve'); 
[Ureg,delprog] = polyconf(P,T,s,'alpha',0.05,'predopt','observation');

% MATLAB-Funktionen zur Bewertung der Signifikanz 
stats = regstats(U,T,'linear')
[B,Bint] = regress(U',[ones(length(T),1) T'])