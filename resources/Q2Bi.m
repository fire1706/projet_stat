%% function qui va cr?e les 500 moyennes de tout les ?chantillons
function [multi_mean,mean_of_multiMean] = Q2Bi(X) % X est la matrice comprenant les 500 ?chatillons
    multi_mean = zeros(500,1);
    i = 1;
    while(i<=500)
        multi_mean(i,1) = mean(X(i,:));
        i = i + 1;
    end
    histogram(multi_mean,21);
    mean_of_multiMean = mean(multi_mean);
    
end

    