clc;clear;close all

%Datos
x = (0:8)';
y = [12; 10.5; 10.0; 8.0; 7.0; 8.0; 7.5; 8.5; 9.0];
%Construccion de la Matriz A y b
A = [x.^2 x ones(length(x),1)];
b = y;
%Resolviendo Ac=b a traves de minimos cuadrados
c = A\b;
%Graficas
f =@(x) c(1)*x.^2 +c(2)*x + c(3);
xx = linspace(0,8);
plot(x,y,'*r');grid on;hold on
plot(xx,f(xx),'b')
xlabel('Aditivo en gr')
ylabel('Tiempo en Horas')

%que cantidad de aditivo resulta en tiempo minimo de secado?
%Cual es el tiempo minimo de secado?
%aditivo_minimo = -b/2a
%tiempo_minimo = f(-b/2a)
aditivo_minimo = -c(2)/2/c(1)
tiempo_minimo = f(aditivo_minimo)
min(f(xx))