function pop = population(x, group_id)
%   POPULATION(X, GROUP_ID) is the population of the group GROUP_ID.
%
%   X : N-by-D table         readtable('data.csv')
%   GROUP_ID : 1-1 double    your group id
%   POP : 500-by-D table     your population

n = 500;
rng(group_id);

l = size(x, 1);
indexes = false([l, 1]);
indexes(strcmp(x.LastName, 'Smith')) = true;

i = 1;
k = 0;
while (i < n)
    k = mod(k + randi(l) - 1, l) + 1;
    if (~indexes(k))
        indexes(k) = true;
        i = i + 1;
    end
end

pop = x(indexes, :);

end