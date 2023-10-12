clc; clear

syms x y

f1 = (x + x/4)*(x^3 +1)*x/4 + sin(x);
f1_assigned = subs(f1,x,pi/2);
f1_double = double(f1_assigned)


f2 = x/y;
f2_assigned = subs(f2,[x,y],[1,5]);
f2_double = double(f2_assigned)
