clc;clear

% Dados 3 vectores en R3
u = [1 3 4];
v = [1 2 3];
w = [6 7 5];
% El volumen viene dado por |dot(u,cross(v,w))|
% Producto Cruz
A = cross(v,w);
% Producto Punto
V = dot(u,A);
% Norma del vector para obtener el volumen
Volumen = norm(V);
disp('Volumen =')
disp(Volumen)

