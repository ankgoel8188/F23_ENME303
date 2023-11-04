clc; clear

A = [9 5 8;
     7 8 5;
     9 4 0];

b = [3;
     8;
     4];

rank(A)
rank([A b])

x = inv(A)*b;
y = A*x;