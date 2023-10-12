clc; clear

syms x t

expr1 = (1-4*x)^3;  % take the first and second derivative
diff(expr1)
diff(expr1,2)

expr2 = (sin(t)-4*x)^3; % with respect to t
diff(expr2,t)
