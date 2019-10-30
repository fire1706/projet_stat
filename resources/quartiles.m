function [first_q, second_q, third_q] = quartiles(x)
%   QUARTILES(X) returns the first, second and third quartiles of the elements in X.
%
%   X : N-by-1 double
%   FIRST_Q : 1-by-1 double
%   SECOND_Q : 1-by-1 double
%   THIRD_Q : 1-by-1 double
%%On va d'abord sortir la boite ? moustache
boxplot(x)
%% Calcule des quartiles
second_q = median(x);
first_q = median(x(find(x<median(x))));% pour ne prendre que ce qui est entre le minimum et la m?dianne
third_q = median(x(find(x>median(x))));% pour ne prendre que ce qui est entre le maximum et la m?dianne


end