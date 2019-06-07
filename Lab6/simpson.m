function I = simpson(f, a, b, N)

h = (b - a)/(2*N);
##x = a + (0:2*N)*h;
x = a:h:b;

xp = x(2:2:end-1);
xi = x(3:2:end-2);

I = h/3 * ( f(a) + f(b) + 4*sum(f(xp)) + 2*sum(f(xi)));

end