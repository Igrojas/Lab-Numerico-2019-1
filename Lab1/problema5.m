clc;clear

C = {};
for i = 1:4
  
  C(i) = {eye(i+1)};
endfor

disp(C)