%% Actividad $A_2$.
% *Algebra Lineal, metodos directos*
%
% Ignacio Sica
%
% 25/03/21
%
% El objetivo es trabajar en la resoluci�n de sistemas de ecuaciones utilizando 
% los m�todos de descomposici�n PLU y Cholesky. 

%% Puntos pre-actividad 2
% Estudie la funci�n SustitucionAdelante que aparece en el archivo con el mismo 
% nombre para construir las funciones que se solicitan.
%
% Construya una funci�n que implemente la Sustituci�n hacia atr�s que tenga por 
% entradas una matriz y un vector y como salidas un vector con la soluci�n y un 
% mensaje de �xito o fracaso del algoritmo. Puede asumir que la matriz de entrada 
% es triangular superior.
%
% Construya una funci�n que descomponga a una matriz cuadrada M en matrices PLU.
%
% Construya una funci�n que descomponga a una matriz sim�trica positiva definida 
% M usando el m�todo de Cholesky.
%
% Utilizando las funciones anteriores pertinentes construya una funci�n que 
% resuelva el sistema de ecuaciones Ax=b usando la descomposici�n PLU.
%
% Utilizando las funciones anteriores pertinentes construya una funci�n que 
% resuelva el sistema de ecuaciones Ax=b usando la descomposici�n de Cholesky.
%
% Utilizando las funciones anteriores pertinentes construya una funci�n que 
% calcule la matriz inversa de una matriz dada utilizando la descomposici�n PLU.
%
% Utilizando las funciones anteriores pertinentes construya una funci�n que 
% calcule la matriz inversa de una matriz sim�trica positiva definida dada 
% utilizando la descomposici�n de Cholesky. 

load datos

%% Ejercicio n#1
% Utilizando los algoritmos desarrollados resuelva los sistemas de ecuaciones 
% $a_i*y_i=b_i$ usando la descomposici�n PLU y para cada caso reporte el tiempo 
% requerido por la computadora para resolver el problema, as� como tambi�n 
% calcule el error relativo con respecto a los vectores b $E_i=(a_i*y - b_i)/b_i$, 
% el n�mero de d�gitos significativos que se obtienen y el n�mero de condici�n 
% de la matriz de coeficientes. Comente sus resultados.

disp("a1:")
ej1(a1, b1);

disp("a2:")
ej1(a2, b2);

disp("a3:")
ej1(a3, b3);

disp("a4:")
ej1(a4, b4);

disp("a5:")
ej1(a5, b5);

%%
% Se puede observar que la cantidad de digitos significativos es de los resultados
% ronda entre los 14 en el caso de mayor precision en las matrices mas peque�as
% y 12 en el caso de las matrices mas grandes. Tambien se puede notar como a medida
% que el tama�o de la matriz aumenta la cantidad de tiempo que cuesta computar las
% operaciones aumenta de manera considerable. Este tiempo varia desde la milesima de
% segundos hasta 6 segundo en el caso de la matriz a5

%% Ejercicio n#2
% Utilizando los algoritmos desarrollados resuelva los sistemas de ecuaciones 
% $mi*yi=bi$ usando la descomposici�n PLU y la descomposici�n de Cholesky y para 
% cada caso reporte el tiempo requerido por la computadora para resolver el 
% problema, as� como tambi�n calcule el error relativo con respecto a los 
% vectores b $E_i=(m_i*y - b_i)/b_i$, el n�mero de d�gitos significativos que se 
% obtienen y el n�mero de condici�n de la matriz de coeficientes. Comente sus 
% resultados, compare el desempe�o de los algoritmos ente s�.

disp("m1:")
ej2(m1, b1);

disp("m2:")
ej2(m2, b2);

disp("m3:")
ej2(m3, b3);

disp("m4:")
ej2(m4, b4);

disp("m5:")
ej2(m5, b5);

%%
% Se puede observar que la cantidad de digitos significativos es de los resultados
% ronda entre los 13 en el caso de mayor precision en las matrices mas peque�as
% y 9 en el caso de las matrices mas grandes. Tambien se puede notar como a medida
% que el tama�o de la matriz aumenta la cantidad de tiempo que cuesta computar las
% operaciones aumenta de manera considerable. Este tiempo varia desde la milesima de
% segundos hasta 6 segundo en el caso de la matriz m5. Otra aspecto a mencionar es 
% es que el numero de condicion de las matrices aumenta exponencialmente conforme
% al aumento del tama�o de las matrices. En el caso de la martiz mas peque�a este 
% numero es 18324 y en el caso de la matriz mas grande es 2.79381e+08

%% Ejercicio n#3
% Calcule la inversa de las matrices $m_i$ utilizando la funci�n que emplea la 
% descomposici�n PLU y la funci�n que emplea la descomposici�n de Cholesky. 
% Reporte el tiempo de ejecuci�n de las funciones, calcule el error relativo 
% con respecto a la matriz identidad del producto $m_im_i^{-1}$. Comente sus resultados.

disp("m1:")
ej3(m1);

disp("m2:")
ej3(m2);

disp("m3:")
ej3(m3);

disp("m4:")
ej3(m4);

%%
% Se puede observar que la cantidad de digitos significativos es de los resultados
% ronda entre los 13 en el caso de mayor precision en las matrices mas peque�as
% y 10 en el caso de las matrices mas grandes. Tambien se puede notar como a medida
% que el tama�o de la matriz aumenta la cantidad de tiempo que cuesta computar las
% operaciones aumenta de manera considerable. Este tiempo varia desde la milesima de
% segundos hasta casi 3 segundo en el caso de la matriz m5. Tambien se puede destacar
% que en la mayoria de los casos el algoritmo de PLU demora menos tiempo que el Cholesky
% siendo esto lo opuesto a lo que uno esperaria ua que el de cholesky es una optiomizacion 
% del primero. Esto se debe a que los mismo se conforman de distintas operaciones 
% fundamentales; en el caso de Cholesky se utiliza la raiz cuadrada que es una operacion
% significativamente costosa

%% Bibliografia
% *Eric Walter*, Springer, Numerical Methods and Optimization
%
% *Richard Khoury* & Douglas Wilhelm Harder, Springer
%     Numerical Methods and Modelling for Engineering
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

%% Descomposici�n Plu
# <include>plu.m</include>

%% Descomposici�n cholesky
# <include>cholesky.m</include>

%% Sistemas de ecuaciones x PLU 
# <include>sem_plu.m</include>

%% Sistemas de ecuaciones x Cholesky
# <include>sem_cholesky.m</include>

%% Matriz inversa x PLU
# <include>rm_plu.m</include>

%% Matriz inversa x Cholesky
# <include>rm_cholesky.m</include>

%% SustitucionAdelante
# <include>SustitucionAdelante.m</include>

%% SustitucionAtras
# <include>SustitucionAtras.m</include>

%% Codigo ej1
# <include>ej1.m</include>

%% Codigo ej2
# <include>ej2.m</include>

%% Codigo ej3
# <include>ej3.m</include>

