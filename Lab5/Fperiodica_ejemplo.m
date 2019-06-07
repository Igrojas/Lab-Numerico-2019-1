clc;clear;close all
%Cargando el archios "puntos", que se encuentra en el PDF lab4
load puntos
%Grafica de los puntos
plot(x,y,'ob'); hold all;
%Ensamble de la Matriz
A = [ones(size(x))',cos(x)',sin(x)'];
b = y';
%Resolviendo el sistema Ax=b
x = A\b;
%Vector para graficar
xx = 0:0.01:10;
%Funcion con los coeficientes y grafica
f = x(1) + x(2)*cos(xx) + x(3)*sin(xx);
plot(xx,f)
