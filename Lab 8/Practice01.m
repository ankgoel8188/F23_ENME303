clc; clear; close all

A = [2 3;
     2 4];
b = [5;
     6];

%% Reduced Row Echelon Form
A_reduced = rref(A);
% disp(A_reduced)

%% Find the rank using the rank function

Rank_A = rank(A);

%% Find a basis for the range and null spaces 
% orth(A)
% null(A)
%% Plot the columns of A
U = A(1,:);
V = A(2,:);

X = zeros(1,2);
Y = zeros(1,2);

quiver(X,Y,U,V,'r--','AutoScale','off',LineWidth=2)
hold on
%% Plot b
U = b(1);
V = b(2);

X = 0;
Y = 0;

quiver(X,Y,U,V,'b','AutoScale','off',LineWidth=2)

%% Plot y
xs = inv(A)*b;
y = A*xs;

U = y(1);
V = y(2);

X = 0;
Y = 0;

quiver(X,Y,U,V,'g--','AutoScale','off',LineWidth=2)
