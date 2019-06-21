clc;clear;close

% t < 5
k1 = 1/5
f = @(t,x) [x(2) ; -9.81 + 1/80 *k1*x(2).^2];
u0 = [600;0];

[t,x] = ode45(f,[0,5],u0);

figure
plot(t,x(:,1))

% t >= 5
k2 = 4/15;
f = @(t,x) [x(2) ; -9.81 + 1/80 *k1*x(2).^2];
u0 = [600;0];

[t,x] = ode45(f,[5,20],u0);

figure
plot(t,x(:,1))