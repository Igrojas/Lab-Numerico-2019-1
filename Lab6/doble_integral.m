function I = doble_integral(a, b, c, d, N)
  
F = @(x) arrayfun(@(x) trap(@(y) f(x, y), c, d, N), x);
I = simpson(@(x) F(x), a, b, N);
  
endfunction
