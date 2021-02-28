% Messwerte einlesen
load spritzguss.mat;

% Grafische Darstellung 
f = figure(1);
set(f,'Position',[100 100 1200 800]);
namen = {'Dicke d / mm' 'Temperatur T/ C' 'Druck p_N / bar' 'Schwindung S / %'}$;
gplotmatrix([d' T' p' s'],[],[],[],[],[],'off','hist',namen)

% Berechnung der Kenngrößen
datamean = mean([d' T' p' s'])
datacov = cov([d' T' p' s'])
datacorr = corr([d' T' p' s'])