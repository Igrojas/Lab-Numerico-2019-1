clc;clear

a = diag(3*ones(98,1));
b = diag(4*ones(97,1),1);
c = diag(5*ones(96,1),2);

M = a + b + c;

x = zeros(98,1);
x([end-1 end]) = [5 4];

y = zeros(98,1);
y([end]) = 5;

M = [M x y zeros(98,8)]