%% fonction utilise pour cree les boxplot population et echantillon a but de comparaison
function fin = Q2Aii(X,Y)
% X est N-by-1 et represente la population totale
% Y est n-by-1 et represente un echantillon de la population
% n < N
% fin est une donn?e de sortie vide/null

figure;
boxplot(X)
figure;
boxplot(Y)

end
