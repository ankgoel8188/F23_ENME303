clc
clear all
close all
randn('state',1)


A = randn(2,2);
A = -A*A';
x0 = 2*randn(2,1);
[V,D] = eig(A);

y0 = inv(V)*x0;

quiver(0,0,V(1,1),V(2,1),'r')
hold on
quiver(0,0,V(1,2),V(2,2),'g')
axis([-1 1 -1 1])
quiver(0,0,x0(1),x0(2),'b')

plot(y0(1)*V(1,1),y0(1)*V(2,1),'b*')
plot(y0(2)*V(1,2),y0(2)*V(2,2),'b*')

t = 0:0.05:5;

for ii = 1:length(t)
    x = expm(A*t(ii))*x0;

    y = expm(D*t(ii))*y0;

    quiver(0,0,V(1,1),V(2,1),'r')
    hold on
    quiver(0,0,V(1,2),V(2,2),'g')
    axis([-1 1 -1 1])
    quiver(0,0,x(1),x(2),'b')

    plot(y(1)*V(1,1),y(1)*V(2,1),'b*')
    plot(y(2)*V(1,2),y(2)*V(2,2),'b*')
    hold off
    pause(0.1)
end






