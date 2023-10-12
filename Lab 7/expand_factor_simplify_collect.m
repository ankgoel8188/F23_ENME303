clc; clear
syms x a

f1 = (x-a)^3;
% expand(f1)

f2 = x^3 + 4*x^2 - 11*x - 30;
% factor(f2)

f3 = -2*tan(x)/(tan(x)^2 -1);
% simplify(f3)

f4 = (x + x^2)*(x +1)*x;
% collect(f4)