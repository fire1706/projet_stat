%% fonction utilis? pour cr?e les cdfplot population et ?chantillon a but de comparaison
function fin = Q2Aiii(X,Y)
% X est N by 1 et repr?sente la population totale
% Y est n by 1 et repr?sente un ?chantillon de la population
% n < N

figure;
cdfplot(X)
figure;
cdfplot(Y)

end
