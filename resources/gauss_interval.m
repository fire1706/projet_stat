function [lower_bound, upper_bound] = gauss_interval(x,sigma ,perc)
%   GAUSS_INTERVAL(X, PERC) computes the lower and upper bounds of the 100*PERC percent Gauss confidence interval
%   of X's distribution mean.
%
%   X : N-by-1 double
%   PERC : 1-by-1 double in [0, 1]
%   LOWER_BOUND : 1-by-1 double
%   UPPER_BOUND : 1-by-1 double
meanG = mean(x);
n = length(x);
alpha = 1-perc;
ua = norminv([alpha/2, 1-alpha/2]);
ua = ua(2); %Le premier terme est négatif et l'opposé du second. Cf doc de norminv.

lower_bound = meanG - ua*sigma/sqrt(n);
upper_bound = meanG + ua*sigma/sqrt(n);

end
