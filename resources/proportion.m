function prop = proportion(x, y)
%   PROPORTION(X, Y) gives the proportion of elements in X that are smaller
%   or equal than Y.
%
%   X : N-by-1 double
%   Y : 1-by-1 double
%   PROP : 1-by-1 double
i = 1;
cpt = 0;
while(i<500)
    if(x(i,1)<=y)
        cpt = cpt+1;
    end
    i = i+1;
end    
prop = cpt/500;
end