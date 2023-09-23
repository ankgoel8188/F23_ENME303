clc; clear; close all

f1 = @(x) x^2 + 3*x +2;

x0 = 1;

options = optimoptions ('fsolve','Display','iter');
[x , fval] = fsolve (f1, x0, options);