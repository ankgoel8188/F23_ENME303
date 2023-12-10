clc; clear; close all

%% Visualization 
syms x1 x2
% sp = 10*rand(2,1) - 5; % starting point
sp = [10; 10];
f = 101*x1^2 + 83*x2^2 + 142*x1*x2 - 2*x1 - 3*x2 + 5;
f_init = double(subs(f,[x1 x2], sp'));
fsurf(f)
hold on
plot3(sp(1), sp(2),f_init,'r*',LineWidth=5,MarkerFaceColor='auto')

xlabel('$x_1$',Interpreter='latex')
ylabel('$x_2$', Interpreter='latex')
zlabel('$f$', Interpreter='latex')

%% Jacobian
gradient = jacobian(f, [x1, x2]);

%% Gradient Descent

steps = 100;
alpha = 1e-3; % learning rate
x(:,1) = sp;
ff(1) = double(subs(f,[x1 x2], x(:,1)'));
for i = 1:steps
    x(:,i+1) = x(:,i) - alpha*double(subs(gradient,[x1 x2], x(:,i)'))';
    ff(i+1) = double(subs(f,[x1 x2], x(:,i+1)'));
    plot3(x(1,i+1), x(2,i+1),ff(i+1),'k*',LineWidth=5,MarkerFaceColor='auto')
end

plot3(x(1,end), x(2,end),ff(end),'g*',LineWidth=5,MarkerFaceColor='auto')


