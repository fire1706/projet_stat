%% fonction utilise pour cree les cdfplot population et echantillon a but de comparaison
function fin = Q2Aiii(X,Y)
% X est N-by-1 et represente la population totale
% Y est n-by-1 et represente un echantillon de la population
% n < N
% fin est une variable vide/null

figure;
cdfplot(X)
figure;
cdfplot(Y)

end
