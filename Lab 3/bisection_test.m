clc; clear
% [a b] is the initial interval

a_init = 0;
b_init = 1;

n = 12; % number of the iterations

e_max = 0.007; % we want the max error to be less than this

f = @(x)x.^3 + 2*x -2;

[zero, error] = Bisection_Method(f,a_init,b_init,n,e_max);

