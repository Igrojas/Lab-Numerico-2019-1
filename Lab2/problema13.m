clc;clear;close

f = @(x) cos(x.^2);
xx = linspace(0,pi,100);

plot(xx,f(xx))
legend('cos(x.^2)')
title('Grafica de cos(x.^2)')