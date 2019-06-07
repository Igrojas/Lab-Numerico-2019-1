clc;clear;close

% Trapecios
f1 = @(x) x.^2;
f2 = @(x) exp(-x.^2);
f3 = @(x) log(x);
f4 = @(x) sqrt(x);

for i = [10 20 40 80]
  
  printf('Resultados Regla de Trapecios para N = %d\n', i)
  I1 = trap(f1,0,3,i)
  I2 = trap(f2,-1,1,i)
  I3 = trap(f3,1,2,i)
  I4 = trap(f4,0,1,i)
 endfor
 
 %Simpson
 
 for i = [10 20 40 80]
  
  printf('Resultados Regla de Simpson para N = %d\n', i)
  I1 = simpson(f1,0,3,i)
  I2 = simpson(f2,-1,1,i)
  I3 = simpson(f3,1,2,i)
  I4 = simpson(f4,0,1,i)
 endfor