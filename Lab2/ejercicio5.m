clc;clear
close all
% Funcion anonima
f = @(x) (x<=-2).*(sin(x).^2) + (x>-2).*(1-exp(-x))+ (x<2).*(1-exp(-x)) ...
    + (x>=2).*(1./(x+1));
% Grafica
x = -pi:0.1:pi;
plot(x,f(x));grid on