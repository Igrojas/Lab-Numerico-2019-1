clc;clear

% 2 vectores cualquiera
u = [1 2 3 4];
v = [2 3 1 5];
% Norma 2 para saber el modulo de cada vector
u_norm = norm(u);
v_norm = norm(v);

% Despejamos theta de dot(u,v) = |u||v|cos(theta)
theta = acosd(dot(u,v)/(u_norm * v_norm));
disp('Angulo entre 2 vectores =')
disp(theta)

%  *************************** %
%   Testeando con angulos      %
%        Canonicos             %
%                              %
%  *************************** %

% Testeando con angulos canonicos, donde el angulo entre ellos es 90 grados

u = [1 0 0];
v = [0 1 0];
% Norma 2 para saber su modulo
u_norm = norm(u);
v_norm = norm(v);

% Despejamos theta de dot(u,v) = |u||v|cos(theta)
theta = acosd(dot(u,v)/(u_norm * v_norm));
disp('Testeado con vectores canonicos')
disp('Theta =')
% Deberiamos obtener un angulo de 90 grados
disp(theta)


