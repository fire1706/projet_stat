% script de la question 1a

populas = population(readtable('data.csv'),24);

% on sort la population 
%on donne un intervall de donn?e
maximum = max(populas.Charges(:,1))
Interval = 0: 1000 : maximum;
% de la on sort un grpahique grace a la fonction histogram

histogram(populas.Charges,Interval)
xlabel('Frais hospitaliers ($)')
ylabel('N')
title('Histgramme des frais hospitaliers')

