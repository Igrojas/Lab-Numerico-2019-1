clc;clear;close all

%DATOS
t = [0.5 1 2 3 4];
p = [7 5.2 3.8 3.2 2.5];
%Matriz A y b
A = [exp(-1.5*t') exp(-0.3*t') exp(-0.05*t')];
b = p';
%Resolviendo Ac=b a traves de minimos cuadrados
c = A\b;

%Grafica
f =@(x) c(1)*exp(-1.5*x) + c(2)*exp(-0.3*x) + c(3)*exp(-0.05*x);
xx = linspace(0.5,4);
plot(t,p,'*r');grid on ; hold on
plot(xx,f(xx),'b')
xlabel('Tiempo en horas')
ylabel('Miles de microorganismos ')

%Cual es Numero de microorganismos que habian en la muestra inicial-
%mente? y despues de una hora y media? y despues de 5 horas y media?

mo_inicial = f(0)
mo_hymedia = f(1.5)
mo_5hymedia = f(5.5)