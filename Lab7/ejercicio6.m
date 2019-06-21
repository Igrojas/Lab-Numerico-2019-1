clc;clear;close all

%nuestro vector funcioon f
% a)
alfa = 0; %Para el problema a), donde los conejos y zorros no interactuan
f = @(t,c) [2*c(1) - alfa*c(2) ; -c(2) + alfa *c(1)*c(2)];

%Condiciones iniciales
u0 = [100;100];
[t,x] = ode45(f,[0 1],u0);
plot(t,x(:,1),'-r', t,x(:,2),'-k');grid on
%con alfa = 0 , no hay ninguna interaccion, por lo que los zorros se mueren
clear
% b)
alfa = 0.01; 
f = @(t,c) [2*c(1) - alfa*c(2) ; -c(2) + alfa *c(1)*c(2)];

% Condiciones iniciales
u0 = [30;15];
[t,x] = ode45(f,[0, 10],u0);
figure
plot(t,x(:,1),'-r', t,x(:,2),'-k');grid on
