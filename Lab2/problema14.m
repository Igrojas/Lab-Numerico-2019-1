clc;clear;close

n = 1000; 
y = @(x) cos(x.^n);
xx=linspace(0,pi,100);
plot(xx,y(xx))

