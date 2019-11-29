%% function qui va cr?e les 500 distance de kolmogorov de tout les ?chantillons
function [dst] = Q2Biv(X,Y) % X est la matrice comprenant les 500 ?chatillons et Y la populationd de base
    dst = zeros(500,1);
    i = 1;
    while(i<=500)
        
        [a,b,dst(i,1)] = kstest2(X(i,:),Y);
        i = i + 1;
    end
    histogram(dst,21);
end