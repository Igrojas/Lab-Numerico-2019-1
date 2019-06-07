clc;clear;close all

x = linspace(-pi,pi,200);
plot(3*cos(x),5*sin(x))

Per = quad(@(x) sqrt(9*sin(x).^2 + 25*cos(x).^2), -pi, pi)