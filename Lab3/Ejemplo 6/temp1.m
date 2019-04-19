function  T = temp1(t,k)
%Funcion que se obtiene luego de resolver el PVI del 
    T =  (10.2+1./(2*k)).*exp(-k*(t-20))+(t+24)./2 -1./(2*k);
end