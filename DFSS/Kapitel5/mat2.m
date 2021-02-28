% Grafische Darstellung der unterschiedlichen oberen Prognosegrenzen
f = figure(1) 
plot(Kraft,ProgObenNeueShunts,'g--','Linewidth',2); 
hold on; 
plot(Kraft,ProgObenSeetransport,'r:','Linewidth',2); 
plot(Kraft,ProgObenOxidation,'b','Linewidth',2); 
hold off;