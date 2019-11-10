function [lower_bound, upper_bound] = gauss_interval(x, perc)
%   GAUSS_INTERVAL(X, PERC) computes the lower and upper bounds of the 100*PERC percent Gauss confidence interval
%   of X's distribution mean.
%
%   X : N-by-1 double
%   PERC : 1-by-1 double in [0, 1]
%   LOWER_BOUND : 1-by-1 double
%   UPPER_BOUND : 1-by-1 double
meanG = mean(x);
n = length(x);
alpha = 1.96; % car on consid?re l'interval 95%
varG = var(x,1);

lower_bound = meanG - alpha*varG/sqrt(n);
upper_bound = meanG + alpha*varG/sqrt(n);

end
