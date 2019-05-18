clc;clear;close all

%cargamos los datos
load dolar
% a)
% Graficamos los datos
dias = 1:1:72;
plot(dias,dolar,'ob');grid on;hold all
xlabel('dias');ylabel('dolar');

% b)
%por polinomio de lagrange
l = 1:1:72;
v = polyinterp(dias,dolar,l);
plot(l,v,'--r')

% c)

% d)Por spline cubico
figure;
u = 1:0.1:73;
ss = spline(dias,dolar,u);
plot(dias,dolar,'ob');grid on;hold all
plot(u,ss,'--r')

% e) la recta que mejor se ajusta a los datos
figure;
p1 = polyfit(dias',dolar,1);
xx = 1:0.1:73;
plot(dias,dolar,'ob');grid on;hold all
plot(xx,polyval(p1,xx),'--r')

% f) f = ax^3 + bx + c con a, b ,c en los reales
%Buscamos los a,b,c que mejor ajusten los datos para esta funcion

%ensamble de la matriz
A = [dias'.^3 dias' ones(length(dias),1)];
b = dolar;
%calculamos los coeficientes a,b,c
coef = A\b;

a = coef(1);
b = coef(2);
c = coef(3);

%Funcion con los coeficientes
f = @(x) a*x.^3 + b*x +c;
%Grafica
figure;
xx = 1:0.1:73;
plot(dias,dolar,'ob');grid on;hold all
plot(xx,f(xx),'--r')

% g) Comparando todos los graficos
figure;
plot(dias,dolar,'ob');grid on;hold all
plot(l,v,'k')
plot(u,ss,'g')
plot(xx,polyval(p1,xx))
plot(xx,f(xx),'r')
legend('datos','lagrange','spline','recta','Minimos cuadrados')



