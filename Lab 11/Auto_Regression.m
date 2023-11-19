clc; clear; close all

%% Data Generation
y(1) = 1;
y(2) = 1;


for k = 1:198
    y(k+2) = 2*cosd(30)*y(k+1) - y(k);
end

% plot(y)

%% Auto-regressive Modeling
lm = 2;
Phi = [];
Y = [];
x = [];
for ii = lm+1:length(y)
    for jj = 1:lm
        Phi(ii-lm,jj) = y(ii-jj);
    end
    x(ii-lm,1) = ii;
    Y(ii-lm,1) = y(ii);
end

%% Finding Theta
theta = inv(Phi'*Phi)*Phi'*Y;

%% Prediction
Yhat = Phi*theta;

%% Prediction Error
Error = norm(Y-Yhat);
disp('Error for Auto-regressive Modeling is:')
disp(Error)

error = abs(Y-Yhat);
% figure
% semilogy(error)

figure
plot(x,Y,'g',LineWidth=2)
hold on
plot(x,Yhat,'b--',LineWidth=2)
legend('Ground Truth', 'Prediction')
