function xr = Mbiseccion(f,a,b,Tol)
% % % % % % % % % % % % % % % % % % % % %  
%f: funcion anonima                     %
%Tol: Tolerancia, ejemplo: Tol = 10e-6  %
% % % % % % % % % % % % % % % % % % % % %  
ezplot(f);hold on; grid on                               
while abs(a - b) >= Tol  
    xr=(a + b)/2;
    if f(a)*f(xr)<0               
        b=xr;                      
    else
        a=xr;                      
    end   
    plot(xr,f(xr),'*r') 
end                  
endfunction
