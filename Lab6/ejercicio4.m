clc;clear all;close all

N = 10:10:100;

error = arrayfun(@(n) abs(2/3 - trap(@(x) sqrt(x), 0, 1, n)), N)
%Grafica logaritmica

figure
loglog(N, 1./N.^2, 'r', N, error, 'b'); grid on
legend('h^2', 'Error Absoluto')

%minimos cuadrados
h = 1./N;
A = [ones(length(error),1) log(h')];
b = log(error');
coef = A\b;
C = exp(coef(1));
alfa = coef(2)

%Nueva grafica logaritmica 
figure
loglog(N,error,'r', N,1./(N.^alfa),'b');grid on
legend('Error','h^ alfa')


