clc;clear;close all

% x' = 3sin(t)x + 2ty +1
% y'' = 2x +t^2y' -5y + exp(t)

a = 0 ; b = 1.5;
N = 100;
h = (b-a) / N;
t = a:h:b;
u0 = [0 2 0];
u(1 , :) = u0;

% c,1)
for i = 1:N
      A = [1 - 3*h*sin(t(i + 1)), -2*h*t(i + 1), 0;-h, 1, 0; ...
        -2*h, 5*h, 1 - h*t(i + 1)^2];
      b = [ u(i,1) + h ; u(i,2) ; u(i,3) + h*exp(t(i+1))];
      .
      u(i+1,:) = (A\b)';
end
% c,2)

f = @(t, z) [3*sin(t)*z(1) + 2*t*z(2) + 1; z(1); 2*z(1) + t^2*z(3) - ...
    5*z(2) + exp(t)];
[tt, zz] = ode45(f, [0 1.5], u0);


% c,3) Graficas de x(t)

plot(t,u(:,1),'-r');hold on ; grid on
plot(tt,zz(:,1),'-k')
legend('Implicito','Ode45')
title('x')

% % c,4) Graficas de y(t)
figure
plot(t,u(:,2),'-r');hold on ; grid on
plot(tt,zz(:,2),'-k')
legend('Implicito','Ode45')
title('y')


 
