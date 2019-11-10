function [lower_bound, upper_bound] = student_interval(x, perc)
%   STUDENT_INTERVAL(X, PERC) computes the lower and upper bounds of the 100*PERC percent Student confidence interval
%   of X's distribution mean.
%
%   X : N-by-1 double
%   PERC : 1-by-1 double in [0, 1]
%   LOWER_BOUND : 1-by-1 double
%   UPPER_BOUND : 1-by-1 double

meanG = mean(x);
n = length(x);
alpha = 1.96; % car on consid?re l'interval 95%
Sn1 = 0;
i = 1;
while(i<=n)
    Sn1 = Sn1 + (x(i,1)-meanG)*(x(i,1)-meanG);
    i = i+1;
end
Sn1 = Sn1/(n-1);
Sn1 = sqrt(Sn1);

lower_bound = meanG - alpha*Sn1/sqrt(n);
upper_bound = meanG + alpha*Sn1/sqrt(n);


end