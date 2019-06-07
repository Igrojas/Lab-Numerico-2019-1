function I = trap(f, a, b, N)

h = (b - a)/N;
xi = a:h:b;

I = h * ( (f(a) + f(b))/2 + sum(f(xi(2:end-1))));

end