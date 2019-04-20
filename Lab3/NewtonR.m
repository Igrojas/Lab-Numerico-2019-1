function xr = NewtonR(f, df, x0, Tol )
% % % % % % % % % % % % % % % % % % % % %  
%f: funcion anonima                     %
%df: derivada de la funcion anonima     %
%x0: punto inicial                      %
%Tol: Tolerancia, ejemplo: Tol = 10e-6  %
% % % % % % % % % % % % % % % % % % % % % 

%Grafica
figure
ezplot(f);hold on;grid on
%PRIMERA ITERACION de NR
xr = x0 - f(x0)/df(x0);

%CRITERIO DE DETENCION
while abs(xr - x0) > Tol
%Newton Raphson
  x0 = xr;
  xr = x0 - f(x0)/df(x0);
  plot(xr,f(xr),'*r')
endwhile

%Grafica del punto
plot(xr,f(xr),'*r')
endfunction
