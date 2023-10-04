clc;clear;close all

%% Using the "Newthon_Method" funtion with anonymous funtions
f = @(x)x^2 + 3*x+2;
df = @(x)2*x+3;

x_init = 10;
n = 50;
precision = 1e-10;

[zero_array, zero, iterations] = Newthon_Method(f, df, x_init, n, precision);

plot(iterations,zero_array)
xlabel('iters')
ylabel('zeros')
title('root convergence')

act_root = -1;
error_array = abs(zero_array - act_root);
figure
plot(error_array)


%% Using the "Newthon_Method" funtion with symbolic funtions
syms f(y)

f(y) = y^2 + 3*y+2;
df = diff(f,y);

y_init = 10;
n = 50;
precision = 1e-10;

[zero_array, zero, iterations] = Newthon_Method(f, df, y_init, n, precision);

figure
plot(iterations,zero_array)
xlabel('iters')
ylabel('zeros')
title('root convergence')

act_root = -1;
error_array = abs(zero_array - act_root);
figure
plot(error_array)
