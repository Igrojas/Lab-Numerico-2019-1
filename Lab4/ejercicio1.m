clc;clear;close all

%cargamos los datos
load data
%Graficamos los datos
plot(tiempo,longitud,'ob');grid on ; hold all
%Buscamos una funcion que se ajuste a los puntos

p1 = polyfit(tiempo,longitud,1);
p2 = polyfit(tiempo,longitud,2);
p3 = polyfit(tiempo,longitud,3);
p4 = polyfit(tiempo,longitud,4);
p5 = polyfit(tiempo,longitud,5);
p6 = polyfit(tiempo,longitud,6);

%Graficamos
xx = linspace(0,25);
plot(xx,polyval(p1,xx))
plot(xx,polyval(p2,xx))
plot(xx,polyval(p3,xx))
plot(xx,polyval(p4,xx))
plot(xx,polyval(p5,xx))
plot(xx,polyval(p6,xx))
legend('datos','p1','p2','p3','p4','p5','p6')
xlabel('tiempo'); ylabel('longitud')

%Ajuste por spline
figure;
plot(tiempo,longitud,'ob');grid on ; hold all
ss = spline(tiempo,longitud,xx);
plot(xx,ss,'--r')
title('Ajuste por spline')
legend('datos','spline')
xlabel('tiempo'); ylabel('longitud')



