clc;clear;close all

u = @(t,r) [ r(2) ; (r(1).^(-3*1.4) - 1 - 3/2 * r(2)^2) / r(1)];

u0 = [ 2.5 ; 0];
tspan = [0 20];

[t , u] = ode45(u,tspan,u0);

R = 3e-6.*u(: , 1)
plot(t,R,'--r');grid on
