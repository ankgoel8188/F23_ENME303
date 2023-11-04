clc; clear

A = [-5 3 -5 -8;
     10 6 11 2];

b = [1;
     24];

rank(A)
rank([A b])

% rref(A)

x = A'*inv(A*A')*b;

y = A*x