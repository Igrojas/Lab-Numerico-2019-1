clc;clear;close all

%DATOS
x = [0.25 1 1.5 2.5 7.5]';
y = [-10.8 13.5 16.4 28.7 51.3]';
%Matriz A y b
A = [ones(length(x),1) log10(x)];
b = y;
%Resolviendo Ac=b a traves de minimos cuadrados
c = A\b;

%Grafica
f =@(x) c(1)+c(2)*log10(x)
xx = linspace(0.25,7.5);
plot(x,y,'*r');grid on ; hold on
plot(xx,f(xx),'b')
xlabel('Dosis de vitamina A en mg')
ylabel('Aumento de peso en g')

%Basado en la funcion obtenida, ¿que cantidad de vitamina A 
%es requerida para no aumentar de peso?

vA_exacta = fzero(f,0)
plot(vA_exacta,f(vA_exacta),'*k')