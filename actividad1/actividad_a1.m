%% Actividad 1
%
% Ignacio Sica
%
% 18/03/21

%% Ejercicio 1.10
% A capacitor is labelled as 100 mF, whereas it is actually measured to be
% 108.2532 mF. What are the absolute and relative errors of the label? To how
% many significant digits does the label approximate the actual capacitance?
Ca=0.100
Cr=0.1082532
Eabs=abs(Ca-Cr)
Erel=abs((Ca-Cr)/Cr)
Sd=-log10(Erel/0.5)
Sd=floor(Sd)
%%
% Se puede observar como el valor de la etiqueta del capacitor no tiene ninguna
% cifra significativa puesto que el error que la misma posee un error relativo 
% significatemente grande.

%% Ejercicio 1.13
% To how many significant digits is the approximation 1.998532 when the actual
% value is 2.001959?
Va=1.998532
Vr=2.001959
Erel=abs((Va-Vr)/Vr)
Sd=-log10(Erel/0.5)
Sd=floor(Sd)
%%
% Se puede observar que la cantidad de digitos significativos es de 2. Esto se 
% debe a que el error no es tan alto como en el ejercicio 1.10, siendo el mismo 
% de 1.7118e-03.

%% Ejercicio 2.22
% How would you calculate the sum of n^-2 for n = 1, 2, ..., 100,000 and why?
y = 0;
for i = 1:100000
  y+=i^-2;
endfor
y
%%
% Para realizar la suma del 1 hasta el 100000 utilice el bucle basico for que 
% ofrece octave y se puede notar como la linea que va dentro del mismo lleva 
% punto y coma para que la misma no se imprima cada vez que la misma se ejecuta.

%% Ejercicio 3.4
% Consider the function f(x) = x + sin(x), where the sin function is in radians
% (Beeler et al. 1972). Starting from x0 = 0.5, compute the value of xi and its
% relative error as an approximation of ? over five iterations.
x=0.5;
for i = 1:5
  x=x+sin(x);
  Erel = (x-pi)/pi
  loglog(i,Erel);hold on
endfor
x
%%
% Se puede observar como cadaa vez que se vuelve a ejecutar el bloque que se 
% encuentra dentro del bloque se vuelve a calcular el error relativo del acumulado 
% con respecto a pi y a su vez se imprime en la grafica. Tambien se puede notar 
% como la misma se encuentra en escala logaritmica.

%% Ejercicio 3.5
% Consider the function f(x) = (3x4 + 10x3  20x2  24)/(4x3 + 15x2 40x). Starting
% from x0 = 5, compute the value of xi and its relative error as an approximation of
% 2 over five iterations
warning ("off", "Octave:negative-data-log-axis");
x=5;
for i = 1:50
  x = (3*x^4 + 10*x^3 - 20*x^2 - 24)/(4*x^3 + 15*x^2 - 40*x);
  Erel = (x-2)/2;
  loglog(i,Erel);hold on
endfor
x
%%
% Al igual que en ejercicio anterior, cada vez que se vuelve a ejecutar el bloque
% de codigo del bucle for se vuelve a calcular el error relativo de la sumatoria 
% con respecto a dos y luego se imprime el resultado en la grafica que tambien
% tiene escala logaritmica.