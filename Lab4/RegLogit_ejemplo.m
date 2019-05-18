clear all; close all; clc;
%DATOS
edad=[22,23,21,28,29,18,33,34,29,20,21,23]; 
hijos=[0,1,1,2,2,0,1,1,1,2,0,0];
%Vector de valores logicos, 1 si tiene hijo, 0 si no tiene hijo
prob=hijos>0;
%cambiando los valores, segun el ejemplo
Prob(prob)=0.99;                      
Prob(~prob)=0.01;
%Ensamble de matriz 
A=[ones(length(edad),1),edad'];  
b=log(Prob./(1-Prob))';  
%Resuelve el sistema Ax=b
x=A\b; 
%Nombrando los escalares
beta0 = x(1);
beta1 = x(2);
%Vector para poder graficar
edades = 10:0.1:40;
%Funcion original del Ejmplo 
%Forma 1
f = @(x,beta0,beta1) 1./(exp(-beta0-beta1*x)+1);
%Graficando
plot(edades,f(edades,beta0,beta1));
%probabilidad de que una persona de 22 tenga algun hijo
f(22,beta0,beta1)

