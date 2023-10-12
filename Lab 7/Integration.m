clc; clear

syms x
expr1 = -2*x/(1+x^2)^2;  % indefinte
int(expr1)


expr2 = x*log(1+x);      % definite [0 1]
int(expr2,[0 1])
