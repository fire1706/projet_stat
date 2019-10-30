function corr_xy = correlation(x, y)
%   CORRELATION(X, Y) is the correlation between the elements in X and Y.
%
%   X : N-by-1 double
%   Y : N-by-1 double
%   CORR_XY : 1-by-1 double
mx = mean(x);
my = mean(y);
num = 0;
den1 = 0;
den2 = 0;
i = 1;
while(i<length(x))
    num = num + (x(i,1)-mx)*(y(i,1)-my);
    den1 = den1 + (x(i,1)-mx)*(x(i,1)-mx);
    den2 = den2 +(y(i,1)-my)*(y(i,1)-my);
    i = i+1;
end
corr_xy = num / sqrt(den1*den2);
end