clc;clear

% Tamaño de la matriz
n = 5;
% Creacion de la matriz
A = diag(n:-1:1) + diag(1:n-1,1) + diag(1:n-1,-1);
disp('Matriz A_n =')
disp(A)

% Creando el vector b_n
% Vector numerador y denominador
a = 1:n;
b = n:-1:1;
% Dividiendo punto a punto entre los 2 vectores
format rat
b_n = a./b;
disp('Vector b_n=')
disp(b_n')
