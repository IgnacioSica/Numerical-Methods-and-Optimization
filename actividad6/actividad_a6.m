%% Actividad $A_6$.
% *Raices de funciones*
%
% Ignacio Sica
%
% 03/06/21

%% Problema 1
% Considere a la funcion dada y encuentre las raices de la funcion usando los metodos de Biseccion, 
% Newton y Secante. Compare el desempeno de los metodos. Corrobore los ordenes de convergencia de 
% los diferentes algoritmos.

disp("Problema 1:")

t = linspace(-1, 2.5, 5000);
plot(t, arrayfun(@(t) fun(t), t));
grid on;

x = 100;
pValue = 90;

xL = 0;
xU = 100;
maxI = 100;
minE = 10e-8;

disp("bisection")
tic();
[state, val, iCounter] = bisection(xL, xU, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

disp("newton")
tic();
[state, val, iCounter] = newton(x, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

disp("secant")
tic();
[state, val, iCounter] = secant(x, pValue, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

%% Conclusiones problema 1
% Con los resultados de las aproximaciones del problema 1 se puede observar que el metodo que
% en este caso converge mas rapido es el de bisection y tiene sentido ya que es el unico que 
% asegura una cantidad de pasos determinada dadas las condiciones iniciales. Tambien es el que
% demora menos tiempo en ejecutarse por el mismo motivo. De los otros dos metodos se puede
% el de newton precisa de menos iteraciones para llegar al resultado deseado necesitando
% solamente de 54 iteraciones con respecto a las 72 necesarias en el metodo del secante.

%% Problema 2
% Utilizando el metodo de Newton aproxime la raiz de la funcion dada. partiendo de la condicion 
% inicial (x1,x2)=(−1.5,1.5). La condicion de exito es la misma que en el problema 1.

disp("Problema 2:")

maxI = 100;
minE = 10e-8;

x1 = -1.5;
x2 = 1.5;
xv = [x1;x2];

disp("newton")
tic();
[state, x, iCounter] = mnewton(xv, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

%% Conclusiones problema 2
% En este ejercicio se busco una raiz en una funcion de multiples dimensiones a traves
% del metodo de newton. Dicho metodo resulto muy eficiente a que a pesar no tratarse de
% una funcion sencilla de una sola variable, la cantidad de iteraciones fue muy baja y
% tambien se preciso de muy poco tiempo para realizar la tarea.

%% Bibliografia
% *Eric Walter*, Springer, Numerical Methods and Optimization
%
% *Richard Khoury* & Douglas Wilhelm Harder, Springer
%     Numerical Methods and Modelling for Engineering
%
% *Gauss�Seidel method*, Wikipedia, 
%     (https://en.wikipedia.org/wiki/Gauss%E2%80%93Seidel_method)
%
% *Norm (mathematics)*, Wikipedia
%     (https://en.wikipedia.org/wiki/Norm_(mathematics))
%  
% *Javier Segura*, Universidad de Cantabria, Introduccion al analisis numerico
%     (https://personales.unican.es/segurajj/intro.pdf)
%
% *Errors for Linear Systems* 
%     (http://terpconnect.umd.edu/~petersd/460/linsysterrn.pdf)
%
% *Inv Function*
%     (https://octave.sourceforge.io/octave/function/inv.html)
%
% https://www.unioviedo.es/compnum/labs/PYTHON/Interpolation.html
% https://www.youtube.com/watch?v=Az2jhvu2i2I
% http://www.ugr.es/~mpasadas/ftp/Inter2.pdf

%% Codigo bisection
# <include>bisection.m</include>

%% Codigo newton
# <include>newton.m</include>

%% Codigo secant
# <include>secant.m</include>

%% Codigo mnewton
# <include>mnewton.m</include>

%% Codigo evalJ
# <include>evalJ.m</include>

%% Codigo fun
# <include>fun.m</include>

%% Codigo fun2
# <include>fun2.m</include>

%% Sistemas de ecuaciones x PLU 
# <include>sem_plu.m</include>
