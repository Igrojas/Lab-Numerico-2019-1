clc;clear;close all

%Usaremos el comando fzero...
%Tenemos que A = ab = 3, donde a y b son los catetos del triangulo
%y por pitagoras a^2 + b^2 = 15
%luego lo que debemos resolver es b^4 - 15b^2 +9 = 0

%Graficamos para visualizar donde podrian estar las raices
f = @(x) x.^4 - 15*x.^2 + 9;
xx = linspace(-6,6);
plot(xx,f(xx));grid on ; hold on

%Buscamo cerca de la raiz positiva
b = fzero(f,2);

disp('b =')
disp(b)
a = 3/b;
disp('a =')
disp(a)
