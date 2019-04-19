clc;clear;close all


format rat
x0 = [0,0,0,1];
x = fsolve(@fun_ejercicio6,x0);
disp('a, b, c, d')
disp(x)