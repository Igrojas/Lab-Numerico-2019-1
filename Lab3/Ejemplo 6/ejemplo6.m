clc;clear;close all
%1) Funcionas temp1 y fkappa
%2.a)
%Graficamos la funcion fkappa.
%Observar para que valor de x la funcion toma el valor de 0
x = linspace(0.1,0.5);
F = fkappa(x);
figure()
plot(x,F);grid on;hold on
xlabel('k');ylabel('F(k)')
%2.b)
%Encontrar "kappa" con la funcion fzero
kappa = fzero('fkappa(x)',0.2)
%3) funcion temp2
%4) Con el valor kappa ya encontrado, ahora determinamos la hora de su
%muerte
t = linspace(16,20);
%notar que aqui le entregamos un valor de kappa fijo, el calculado
%anteriormente
T1 = temp2(t,kappa);
%Graficamos
figure()
plot(t,T1);grid on
xlabel('t');ylabel('T1(t)')
%Encontrado la hora de muerte con fzero
t_muerte = fzero(@(t) temp2(t,kappa),[16,20])
%El señor D fue asesinado aproximademente a las 19 horas

%No pudo ser el asesino ya que se encontraba en la entrevista
%"se registro la llegada de M a las 18:35 y su salida a las 19:20"

        
