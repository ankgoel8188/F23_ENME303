clc; clear

A = [9 8 9 2;
    5 2 7 3;
    6 4 3 6;
    8 2 5 6];

b = [42; 45; 53; 63];

x = Gauss_Elimination(A,b)
