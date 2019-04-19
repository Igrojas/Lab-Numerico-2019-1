function F = ejercicio18(x)
%Recibe un vector.
%ejemoplo x = 0:1:10, y = 0:0.1:10, z = 0:0.01:10
n = length(x);
F = zeros(n,1);
for i = 1:n
    
    if x(i) == 0 
        F(i) = 1/2;
    else
        F(i) = (1-cos(x(i)))./(x(i).^2);
    end
end

end