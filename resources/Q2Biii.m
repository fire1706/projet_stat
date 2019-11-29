%% function qui va cr?e les 500 ecart type de tout les ?chantillons
function [multi_std,mean_of_multistd] = Q2Biii(X) % X est la matrice comprenant les 500 ?chatillons
    multi_std = zeros(500,1);
    i = 1;
    while(i<=500)
        multi_std(i,1) = std(X(i,:));
        i = i + 1;
    end
    histogram(multi_std,21);
    mean_of_multistd = mean(multi_std);
    
end
