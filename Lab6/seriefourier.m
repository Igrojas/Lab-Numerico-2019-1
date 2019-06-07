function seriefourier(f,a,b,N)

xx = linspace(a,b,200);
a0 = 2/(b-a) * quad(f,a,b);
sf = 0;
for i = 1:N
    an = 2/(b-a)*quad(@(x) f(x).*cos(2*pi*i*x/(b-a)),a,b);
    bn = 2/(b-a)*quad(@(x) f(x).*sin(2*pi*i*x/(b-a)),a,b);
    sf = sf + an*cos(2*pi*i*xx/(b-a)) + bn*sin(2*pi*i*xx/(b-a));
endfor
sf = sf + a0/2;

plot(xx,f(xx),xx,sf);grid on
legend('f(x)','SF')
title(N)


endfunction