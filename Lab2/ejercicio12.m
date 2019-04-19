function y = ejercicio12(f,P)
%f es una funcion entregada como funcion anonima, es decir, f = @(x) ....
%p es una matriz de puntos, donde la primera fila son los puntos "x" y 
%la segunda fila  los puntos "y"
x = linspace(min(P(1,:)),max(P(1,:)));
[m,n] = size(P);
y = zeros(m,n);
for i = 1:n
    
    if f(P(1,i)) == P(2,i)
        y(1,i) = P(1,i);
        y(2,i) = P(2,i);

    end   

    plot(x,f(x));hold on
    plot(P(1,:),P(2,:),'*r')
end