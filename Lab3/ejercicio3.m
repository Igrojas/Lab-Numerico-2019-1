clc;clear;close all
format long
%Graficamos para ver donde estan las raices
f = @(x) x.^2 - 3500*8;
xx = linspace(-200,200);
plot(xx,f(xx));
%Usando fzero buscamos la raiz, que en este caso seria encontrar la base
b = fzero(f,150);
%Luego la base y la altura son
disp('La base es en [cm]')
disp(b)
%la altura la calculamos de la razon
h = b/4;
disp('La altura es en [cm]')
disp(h)
%Comprobamos calculando el, area que debe ser de 3500cm^2
A = h*b/2;
disp('Area')
disp(A)