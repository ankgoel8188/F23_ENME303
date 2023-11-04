clc; clear; close all

%% Generating Noisy Data
x = 1:0.1:5;
y = x + 3;

y_noisy = y + randn(1,length(x));

phi = [x' ones(length(x),1)];

plot(x,y)
xlabel('x')
ylabel('y')
hold on
plot(x,y_noisy,'o')

%% Least Squares Solution
theta = inv(phi' * phi)*phi' * y_noisy';

%% Linear Model
y_hat = phi*theta;

%% Plots
figure
plot(x,y_noisy,'o')
xlabel('x')
ylabel('y')
hold on
plot(x,y_hat,'--')
