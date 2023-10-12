clc; clear

syms x y

f1 = (x + x^2)*(x^3 +1)*x;
subs(f1,x,2)

f2 = x/y;
subs(f2,[x, y],[1 ,2])
