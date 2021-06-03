%% Actividad $A_5$.
% *Interpolacion y regresion*
%
% Ignacio Sica
%
% 27/05/21

%% Problema 1. 
%
% Es posible que sean utiles as funciones *qr* y *polyval*. No se pueden utilizar las 
% funciones *polyfit* o *vander*.
%
% Considere los datos del archivo datos.mat que describe la cantidad 
% de elementos de una fabrica en los anos 2000 al 2007. 

load datos.mat;
X = linspace(-3, 4, 5000); 
x = x.-2003;

%% Polinomio de interpolacion utilizando la base canónica.

p = vandermonde(x,y);
plot(X, polyval(p,X),x,y,'rx');
xlabel ("Año");
ylabel ("Producción");
title ("Vandermonde");

%% Polinomio de interpolacion utilizando polinomios de Lagrange.

plot(X, lagrange(x,y,X),x,y,'rx');
xlabel ("Año");
ylabel ("Producción");
title ("Lagrange");

%% Encuentre un polinomio de interpolacion para dichos datos usando polinomios de Newton.

c = newton(x,y);
plot(X, arrayfun(@(X) newton_aux(x,y,X,c), X),x,y,'rx');
xlabel ("Año");
ylabel ("Producción");
title ("Newton");

%% ¿Se puede utilizar dicho polinomio como instrumento de predicción para el año 2050?
%
% El polinomio resultante no se puede utilizar para predecir la produccion en el ano
% 2050. Este polinomio solamente sirve para interpolar los puntos en un entorno local
% con respecto a los puntos interpolados. En caso de que se intente predecir la produccion
% en el ano 2050, el resultado no tendria sentido ya que la curva, a medida que se aleja
% de la localidad de los puntos, tiende a infinito. Es mas, se puede notar esto a una escala mucho menor.
% Al estar trabajando con polinomios, todas las raices(reales o no)de los mismos se encuentran en la localdiad de
% de los puntos por lo que si uno se aleja de eso ya la funcion tiene a infinito.

%% ¿Se puede utilizar dicho polinomio como instrumento de para corroborar la cantidad de elementos fabricados en el año 1980? 
%
% Al igual que en el punto anterior, los polinomios obtenidos en esta parte no sirven
% para aproximar la produccion en un entorno que se encuentra alejado de la localidad
% de los puntos utilizados para interpolar. En caso de que se intente predecir la produccion
% en el ano 1980, el resultado no tendria sentido ya que la curva, a medida que se aleja
% de la localidad de los puntos, tiende a infinito.

%% ¿Qué es el fenómeno de Runge? ¿Se presenta en este problema?
%
% En pocas palabras, el fenomeno de Runge explica que el aumentar el grado del polinomio
% cuando se hace una interpolacion lineal no necesariamente aumentara la precision sino
% que se generaran crestas y valles cada vez mas pronunciadas. Esto se da cuando los 
% puntos se encuentran equidistantemente distribuidos. Este fenomeno si se presenta en el
% problema planteado ya que todos los puntos se encuentran equidistantemente separados el 
% uno del otro. En las graficas se pueden observar estas crestas y valles.

%% Problema 2. Comportamiento de las aproximaciones.
%
% A pesar de no haber podido terminar el codigo a tiempo para la entrega, a traves de 
% teorico que estuve leyendo para la actividad y tambien los resultados que algunos 
% compañeros compartieron durante la clase puedo sacar las siguientes conclusiones
% acerca de las aproximaciones. Primero es que, a diferencia de el ejercicio 1 donde
% se interpolaban los puntos, al simplemente aproximar las graficas resultantes no 
% pasan exactamente por los datos de entrada, es decir, la curva del grafico "acompaña"
% a los puntos pero no llega a tocar. Tambien, se puede observar que el numero de condicion
% de la matriz resultante es mayor por lo que la precision y exactitud de los datos tambien es 
% menor.

%% Bibliografia
% *Eric Walter*, Springer, Numerical Methods and Optimization
%
% *Richard Khoury* & Douglas Wilhelm Harder, Springer
%     Numerical Methods and Modelling for Engineering
%
% *Gauss–Seidel method*, Wikipedia, 
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

%% Codigo vandermonde
# <include>vandermonde.m</include>

%% Codigo lagrange
# <include>lagrange.m</include>

%% Codigo newton
# <include>newton.m</include>

%% Descomposición Plu
# <include>plu.m</include>

%% Sistemas de ecuaciones x PLU 
# <include>sem_plu.m</include>

%% SustitucionAdelante
# <include>SustitucionAdelante.m</include>
