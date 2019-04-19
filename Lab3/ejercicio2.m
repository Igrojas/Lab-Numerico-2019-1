clc;clear;close all

%Usaremos el comando fzero...
%Tenemos que A = ab = 12, donde a y b son los lados del cuadrado
%y por pitagoras a^2 + b^2 = 25
%luego lo que debemos resolver es b^4 - 25b^2 +12^2 = 0

%Graficamos para visualizar donde podrian estar las raices
f = @(x) x.^4 - 25*x.^2 + 12^2;
xx = linspace(-6,6);
plot(xx,f(xx));grid on ; hold on

%Buscamo cerca de la raiz positiva
b = fzero(f,2);

disp('b =')
disp(b)
a = 12/b;
disp('a =')
disp(a)



