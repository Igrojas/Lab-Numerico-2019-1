clc;clear;close all
%Area y Volumen de una "caja" de lados a, b y c
% A = 2ab + 2bc + 2ac
% V = abc
%DATOS
% a = 5     un lado de la caja
% A = 950
% V = 950
% Debemos encontrar los lados b y c

%Luego de las ecuacions de Volumen y Area tenemos un sistema de ecuaciones
% A = 10(b+c) +2bc = 950
% V = abc = 650 ===>  bc = 130
% de aqui b = 69-c
% finalmente tenemos que resolver
% c^2 -69c +130 = 0

%Graficamos y observamos valores cercanos a la raiz
f = @(x) x.^2 - 69*x + 130;
xx = linspace(-10,80);
plot(xx,f(xx));grid on
%Calculamos las 2 raices
c1 = fzero(f,0)
c2 = fzero(f,80)
% ¿Cual escojemos ?
b1 = 69 - c1
b2 = 69 - c2
% Ambos valores nos permiten obtener valor de b>0
%comprobamos los valores
a = 5;
%Calculo de volumen
V1 = a*b1*c1
V2 = a*b2*c2
%Calculo de Area
A1 = 2*(a*b1+b1*c1+a*c1)
A2 = 2*(a*b2+b2*c2+a*c2)



