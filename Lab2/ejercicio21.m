function ejercicio21(m,n)
%Esta funcion recibe el numero de filas "m" y el numero de columnas "n"
% Creamos los siguientes vectores decrecientes
a = m:-1:1; 
b = n:-1:1;
% Creamos las matrices pedidas
A_m= zeros(m,m);
A_m(1,2:end) = a(2:end);
A_m(2:end,1) = a(2:end);
A_m = A_m + diag(a);

A_n = zeros(n,n);
A_n(1,2:end) = b(2:end);
A_n(2:end,1) = b(2:end);
A_n = A_n + diag(b);
% Armamos la matriz M acoplando las matrices A_m A_n y las matrices nula
M = [A_m zeros(m,n); zeros(n,m) A_n]
% Creamos el vector b
i = 1:m+n;
b = (1+1./i).^i;
% resolvemos el sistema
x = M\b';
% Calculamos las normas 2, 1 e inf
error1=norm(M*x-b');
error2=norm(M*x-b',1);
error3=norm(M*x-b',inf);

disp(M)