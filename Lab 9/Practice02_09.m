clc; clear

A = [9 5 4;
     7 8 -1;
     9 4 5];

b = [52;
     61;
     47];

% rank(A)
% rank([A b])
% 
% rref(A)
Ar = A(:,[1 2]);
% To find the least square solution to Ar*x=b 

x = inv(Ar'*Ar)*Ar'*b