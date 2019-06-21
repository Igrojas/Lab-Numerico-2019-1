clc;clear;close all

a = 0; b = 2;
N = 200;
h = (b - a)/N;
y(1) = 0;
z(1) = 0;
x = a:h:b;
% Problema 1.
for i = 2:length(x)
  y(i) = y(i-1) + h*(sin(2*x(i-1)) + y(i-1)) ;
  z(i) =  ( z(i-1) + h*sin(2*x(i)) ) / ( 1- h );
endfor
figure
plot(x,y,'r',x,z,'b');
legend('explicito','implicito')

% Problema 2.
for i = 2:length(x)
  y(i) = y(i-1) + h*(cos(3*x(i-1)));
  z(i) = y(i-1) +h*cos(3*x(i));
endfor
figure
plot(x,y,'r',x,z,'b');
legend('explicito','implicito')

% Problema 3.

p(:,1) = [0 0]; 
z1(:,1) = [0 0]; 
for i = 2:length(x)
  %Explicito
  p(:,i) = p(:,i-1) + h.*[ p(2,i-1) ; 2*p(2,i-1) + 2*p(1,i-1) + sin(2*x(i-1))];
  %Implicito
  z1(:,i) = [1 -h ; -2*h (1-2*h) ] \ (z1(:,i-1)+ [0;h*sin(2*x(i))]);
endfor
figure
plot(x,p(1,:),'r',x,z1(1,:),'b');hold on

%Resolvemos el Problema 3 con ode45
f = @(t,x) [x(2);2*x(2)+2*x(1)+sin(2*t)];
[t,x] = ode45(f,[0 2],[0 0]);

plot(t,x(:,1))
legend('explicito','implicito','de45')
