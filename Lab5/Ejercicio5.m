clc;clear;close all

%DATOS
t = (0:10)';
p = [5.03 4.71 4.40 3.97 3.88 3.62 3.30 3.15 3.08 2.92 2.70]'*1e-4;
%Matriz A y b
A = [t ones(length(t),1)];
b = 1./p;
%Resolviendo Ac=b a traves de minimos cuadrados
c = A\b;
alfa = c(1);
n0 = 1/c(2);
%Grafica
f =@(x) n0./( 1 +n0*alfa*x )
xx = linspace(0,10,110);
plot(t,p,'*r');grid on ; hold on
plot(xx,f(xx),'b')
xlabel('Tiempo en segundos')
ylabel('Iones 10^-4 ')