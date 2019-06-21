clc;clear;close all

N = 3000;
E0 = 150;
M0 = 0;
S0 = N - E0 - M0; % Esto se saca del enunciado.
m = 1.8;
c = 0.001;
f = @(t , M) m * (N - S0*exp(-c/m * M) - M);

[t , M] = ode45( f , [0 10] , M0);

S = S0*exp(-c/m*M);
E = N - S - M;

plot (t,M , '--r', t,S , '--b' , t,E , '--k');

M(8)

