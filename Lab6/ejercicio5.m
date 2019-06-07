clc;clear;close all

% a)
f = @(x) exp(x - x.^2);
g = @(x) atan(x.^2);

xx = linspace(-3,3,200);

plot(xx,f(xx),'r',xx,g(xx),'b')
legend('f(x)','g(x)' )

r1 = fzero(@(x) f(x) - g(x) , -1)
r2 = fzero(@(x) f(x) - g(x) , 1)

I = quad(@(x) f(x) - g(x),r1,r2)

% b)

h = @(x) quad(@(x) sin(x.^2),0,x) - sqrt(pi)/4

xx=linspace(-3,3,200);
F = arrayfun(h,xx);
figure
plot(xx,F);grid on

r3 = fzero(h,1)
r4 = fzero(h,2.4)
r5 = fzero(h,2.6)

