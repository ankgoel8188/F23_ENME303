clc; clear

syms a b c x 

eqn1 = a*x^2 + b*x + c == 0;

S = solve(eqn1)
