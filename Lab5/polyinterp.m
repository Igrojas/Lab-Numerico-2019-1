function v = polyinterp(x,y,u)
    n = length(x);              %NUMERO DE PUNTOS
    v = zeros(size(u));         %Vector FILA DE CEROS
    for k = 1:n
      w = ones(size(u));     	%VECTOR FILA UNOS
      for j = [1:k-1 k+1:n]
      	w = (u-x(j))./(x(k)-x(j)).*w; %Aplicando Lagrange
     end
      v = v + w*y(k);   %EL polinomio de Lagrange
    end
