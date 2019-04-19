clc;clear

% Vector de 1 a 10
a = 1:10;
% Vector de 10 a 1
b = 10:-1:1;
% Matriz nula de 98x10
A = zeros(98,10);
% llenando filas IMPARES
for i=1:2:98
   A(i,:) = a;
end
% llenando filas PARES
for i=2:2:98
   A(i,:) = b;
end

disp(A)