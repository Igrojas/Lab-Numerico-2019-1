clc;clear;close all

%Resolvemos por ode45

f =@(x) x.^2 - x.^3;
tspan = [0 1];
x0 = [0.1 0.05 0.001 10^-8];
for i = 1:length(x0)
  [t,x] = ode45(f,tspan,x0(i));
  plot(t,x);hold on
endfor
legend