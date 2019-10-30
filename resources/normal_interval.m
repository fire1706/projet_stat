function [lower_bound, upper_bound] = normal_interval(x)
%   NORMAL_INTERVAL(X) computes the normality interval, in the sense of the normal
%   distribution, of X.
%
%   X : N-by-1 double
%   LOWER_BOUND : 1-by-1 double
%   UPPER_BOUND : 1-by-1 double
%%
%On appelle la fonction sum_up pour obtenir la moyenne et l'?cart type
[moyenne,unuseable,ecart] =sum_up(x);
lower_bound = moyenne - ecart;
upper_bound = moyenne + ecart;

end