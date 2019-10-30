function [mean_x, median_x, std_x] = sample_sum_up(x)
%   SAMPLE_SUM_UP(X) returns the mean, median and standard deviation of the elements in X.
%
%   X : N-by-1 double
%   MEAN_X : 1-by-1 double
%   MEDIAN_X : 1-by-1 double
%   STD_X : 1-by-1 double
mean_x = mean(x);
median_x = median(x);
std_x = std(x);
end