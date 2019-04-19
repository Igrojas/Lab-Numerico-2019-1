clc;clear

% Dados 2 vectores en R3
u = [2 3 4];
v = [6 5 2];
% Producto cruz entre u y v
w = cross(u,v);
w1 = cross(u,w);
w2 = cross(v,w);
% El area sera igual al modulo del vector obtenido de u X v
Area1 = norm(w);
Area2 = norm(w1);
Area3 = norm(w2);

Area = 2*(Area1 + Area2 + Area3)
disp('Area Paralelogramo =')
disp(Area)