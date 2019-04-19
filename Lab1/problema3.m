clc;clear

A = [1 2 3;  4 2 5; 1 0 1];

B = 0.5* [-2 2 -4 ;  -1 2 -7; 2 -2 6];

printf("A*B \n")
A*B
printf("B*A \n")
B*A
%responder la c)

%calculo de normas

norm(A)
norm(A,1)
norm(A,inf)

norm(B)
norm(B,1)
norm(B,inf)
