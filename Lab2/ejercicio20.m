function G = ejercicio20(x)
%Recibe un vector.
%ejemoplo x = 0:1:10, y = 0:0.1:10, z = 0:0.01:10
n = length(x);
G = zeros(n,1);
for i = 1:n
    
    if x(i) == 0 
       G(i) = 1/2;
    else
       G(i) = 2*sin(x(i)/2).^2/(x(i).^2);
    end
end
end