clc;clear;close all
format rat
dias = [1 30 57 88 117 135 169 197 227 255 286 311];
Hora = [398 427 456 484 509 525 545 543 517 478 432 402];
K = 3;
f = 2*pi/365;
M = fun_ejercicio9(dias,f,K);
coef = M\Hora';

M = fun_ejercicio9(359,f,K);
format short
result = dot(coef,M)

