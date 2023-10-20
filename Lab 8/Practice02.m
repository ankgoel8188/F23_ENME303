clc; clear; close all

A = [9 5 8;
     7 8 5;
     9 4 0];

b = [3;
     8;
     4];

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
W = A(3,:);

X = zeros(1,3);
Y = zeros(1,3);
Z = zeros(1,3);

quiver3(X,Y,Z,U,V,W,'r--','AutoScale','off',LineWidth=2)
hold on
%% Plot b
U = b(1);
V = b(2);
W = b(3);

X = 0;
Y = 0;
Z = 0;

quiver3(X,Y,Z,U,V,W,'b','AutoScale','off',LineWidth=2)

%% Plot y
xs = inv(A)*b;
y = A*xs;

U = y(1);
V = y(2);
W = y(3);

X = 0;
Y = 0;
Z = 0;

quiver3(X,Y,Z,U,V,W,'g--','AutoScale','off',LineWidth=2)
