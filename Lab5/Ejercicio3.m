clc;clear;close all

%DATOS
x = [1 2 5 15 25 30 35 40];
y = [99 95 85 55 30 24 20 15];

% Para y = alfa*beta^x
%Matriz A y b
Aa = [x' ones(length(x'),1)];
ba = log(y');
%Resolviendo Ac=b a traves de minimos cuadrados
ca = Aa\ba;
alfa_a = exp(ca(2));
beta_a = exp(ca(1));

% Para y = alfa*(100-x)10^(beta*x)
%Matriz A y b
Ab = [x'*log(10) ones(length(x),1)];
bb = log(y'./(100-x'));
%Resolviendo Ac=b a traves de minimos cuadrados
cb = Ab\bb;
alfa_b = exp(cb(2));
beta_b = cb(1);

%Errores

Error_a = norm(ba-Aa*ca,2)
Error_b = norm(bb-Ab*cb,2)

%Grafica
fa =@(x) alfa_a*beta_a.^x
fb = @(x) alfa_b*(100-x).*10.^(beta_b*x)
xx = linspace(1,40);
plot(x,y,'*r');grid on ; hold on
plot(xx,fa(xx),'b')
plot(xx,fb(xx),'k')
xlabel('Miles de millas recorridas')
ylabel('Porcentaje util')
legend('Puntos','fa','fb')

%Nos quedamos con el modelo de la funcion a

%Con el mejor modelo, estime que porcentaje de las llantas radiales del 
%fabricante duraran 45000 millas y
%50000 millas. Su programa debe mostrar estas estimaciones.
millas_45 = fa(45)
millas_50 = fa(50)