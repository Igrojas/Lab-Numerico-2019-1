clc;clear;close all

f = @(x) ones(size(x));
g = @(x) x;
h = @(x) double(x >= -2).*double(x < 0) + ...
          x.^2.*double(x >= 0).*double(x <= 1);

N = [1 2 5 10];

for i = 1:length(N)
  seriefourier(f,0,1,N(i));
  pause(1)
endfor


for i = 1:length(N)
  seriefourier(g,-1,2,N(i));
  pause(1)
endfor

for i = 1:length(N)
  seriefourier(h,-2,1,N(i));
  pause(1)
endfor


