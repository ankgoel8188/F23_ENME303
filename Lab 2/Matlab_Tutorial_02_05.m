clc; clear

% 4a + b + 8c = 4
% 9a + 4b + c = 6
% 6a + 2b + 8c = 8

A = [4 1 8; 9 4 1; 6 2 8];
B = [4; 6; 8];

%% sol1
x1 = inv(A)*B

%% sol2
x2 = A^(-1)*B

%% sol3
x3 = A\B