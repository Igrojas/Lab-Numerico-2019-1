function xr = Msecante(f, x0, x1, Tol )
% % % % % % % % % % % % % % % % % % % % %  
%f: funcion anonima                     %
%x0: punto inicial                      %
%x1: punto inicial                      %
%Tol: Tolerancia, ejemplo: Tol = 10e-6  %
% % % % % % % % % % % % % % % % % % % % % 

%Grafica
figure
ezplot(f);hold on;grid on
%PRIMERA ITERACION de Secante
xr = x1 - (x1 - x0)/(f(x1) - f(x0)) * f(x1);

%CRITERIO DE DETENCION
while abs(xr - x1) > Tol
%Metodo de la Secante
  x0 = x1;
  x1 = xr;
  xr = x1 - (x1 - x0)/(f(x1) - f(x0)) * f(x1);
  plot(xr,f(xr),'*k')
endwhile

%Grafica del punto
plot(xr,f(xr),'*r')
endfunction