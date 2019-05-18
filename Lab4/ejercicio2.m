clc;clear;close all

% a)
%DATOS
x = [-2 -1 0 1 2];
y = [-25 -4 -1 8 47];
%Usamos comando polyfit
p1 = polyfit(x,y,1);
p2 = polyfit(x,y,2);
p3 = polyfit(x,y,3);
p4 = polyfit(x,y,4);
p5 = polyfit(x,y,5);

% b)
%Graficamos cada polinomio que se ajusta a los datos
xx = linspace(-2,2);
plot(x,y,'*r');grid on; hold all
plot(xx,polyval(p1,xx));grid on; hold all
plot(xx,polyval(p2,xx));
plot(xx,polyval(p3,xx));
plot(xx,polyval(p4,xx));
plot(xx,polyval(p5,xx));
legend('datos','p1','p2','p3','p4','p5')

% c)
 q = [1 0 -1 3 6 -1];
 xx = linspace(-2,2);
 figure;
 plot(x,y,'*r');grid on; hold all
 plot(xx,polyval(q,xx))
 legend('datos','q')
 
 % d) p3, p4, p5, q
 % e) p3 y p4 son el mismo polinomio
 disp(p3); disp(p4)
 % No, como son 5 pares de puntos, podrian existir infinitos polinomios de
 % grado 5 o mas