clc;clear;close all

T =@(t,k)  (10.2+1./(2*k)).*exp(-k*(t-20))+(t+24)./2 -1./(2*k);
F = @(k) T(21,k) - 29.4;
x = linspace(0.1,0.5);
figure()
plot(x,F(x),'r');grid on
kappa = fzero(F,0.2)

T1 =@(t) T(t,kappa)-36.5;
t = linspace(12,20);
figure()
plot(t,T1(t),'b'); grid on

tm = fzero(T1,[16,20])
