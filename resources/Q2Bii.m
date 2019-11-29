%% function qui va cr?e les 500 mediane de tout les ?chantillons
function [multi_median,mean_of_multiMedian] = Q2Bii(X) % X est la matrice comprenant les 500 ?chatillons
    multi_median = zeros(500,1);
    i = 1;
    while(i<=500)
        multi_median(i,1) = median(X(i,:));
        i = i + 1;
    end
    histogram(multi_median,21);
    mean_of_multiMedian = mean(multi_median);
    
end
