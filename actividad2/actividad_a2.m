%% Actividad $A_2$.
% *Algebra Lineal, metodos directos*
%
% Ignacio Sica
%
% 25/03/21
%
% El objetivo es trabajar en la resolución de sistemas de ecuaciones utilizando 
% los métodos de descomposición PLU y Cholesky. 

%% Puntos pre-actividad 2
% Estudie la función SustitucionAdelante que aparece en el archivo con el mismo 
% nombre para construir las funciones que se solicitan.
%
% Construya una función que implemente la Sustitución hacia atrás que tenga por 
% entradas una matriz y un vector y como salidas un vector con la solución y un 
% mensaje de éxito o fracaso del algoritmo. Puede asumir que la matriz de entrada 
% es triangular superior.
%
% Construya una función que descomponga a una matriz cuadrada M en matrices PLU.
%
% Construya una función que descomponga a una matriz simétrica positiva definida 
% M usando el método de Cholesky.
%
% Utilizando las funciones anteriores pertinentes construya una función que 
% resuelva el sistema de ecuaciones Ax=b usando la descomposición PLU.
%
% Utilizando las funciones anteriores pertinentes construya una función que 
% resuelva el sistema de ecuaciones Ax=b usando la descomposición de Cholesky.
%
% Utilizando las funciones anteriores pertinentes construya una función que 
% calcule la matriz inversa de una matriz dada utilizando la descomposición PLU.
%
% Utilizando las funciones anteriores pertinentes construya una función que 
% calcule la matriz inversa de una matriz simétrica positiva definida dada 
% utilizando la descomposición de Cholesky. 

load datos

%% Ejercicio n#1
% Utilizando los algoritmos desarrollados resuelva los sistemas de ecuaciones 
% $a_i*y_i=b_i$ usando la descomposición PLU y para cada caso reporte el tiempo 
% requerido por la computadora para resolver el problema, así como también 
% calcule el error relativo con respecto a los vectores b $E_i=(a_i*y - b_i)/b_i$, 
% el número de dígitos significativos que se obtienen y el número de condición 
% de la matriz de coeficientes. Comente sus resultados.

%% Ejercicio n#2
% Utilizando los algoritmos desarrollados resuelva los sistemas de ecuaciones 
% $mi*yi=bi$ usando la descomposición PLU y la descomposición de Cholesky y para 
% cada caso reporte el tiempo requerido por la computadora para resolver el 
% problema, así como también calcule el error relativo con respecto a los 
% vectores b $E_i=(m_i*y - b_i)/b_i$, el número de dígitos significativos que se 
% obtienen y el número de condición de la matriz de coeficientes. Comente sus 
% resultados, compare el desempeño de los algoritmos ente sí.

%% Ejercicio n#3
% Calcule la inversa de las matrices $m_i$ utilizando la función que emplea la 
% descomposición PLU y la función que emplea la descomposición de Cholesky. 
% Reporte el tiempo de ejecución de las funciones, calcule el error relativo 
% con respecto a la matriz identidad del producto $m_im_i^{-1}$. Comente sus resultados.

%% Bibliografia

%% Codigo
# <include>act_a2.m</include>