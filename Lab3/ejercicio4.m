clc;clear;close all
format rat
x0 = [1,1];
x = fsolve(@fun_ejercicio4,x0);
disp(x)