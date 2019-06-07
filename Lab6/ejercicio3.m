clc;clear;close

exac = 0.63212;
f = @(x) exp(-x);
N = 10:10:100;
for i = 1:length(N)
    I = trap(f,0,1,i);
    error(i) = abs(exac-I);
endfor

%Grafica logaritmica

loglog(N,error,'r', N,1./(N.^2),'b');grid on

%Se ven rectas paralelas, lo que indica que decrecen a la misma razon
% y para este caso el error es 0(h^2)
