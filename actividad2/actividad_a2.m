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

%% Ejercicio n#2
% Utilizando los algoritmos desarrollados resuelva los sistemas de ecuaciones 
% $mi*yi=bi$ usando la descomposici�n PLU y la descomposici�n de Cholesky y para 
% cada caso reporte el tiempo requerido por la computadora para resolver el 
% problema, as� como tambi�n calcule el error relativo con respecto a los 
% vectores b $E_i=(m_i*y - b_i)/b_i$, el n�mero de d�gitos significativos que se 
% obtienen y el n�mero de condici�n de la matriz de coeficientes. Comente sus 
% resultados, compare el desempe�o de los algoritmos ente s�.

%% Ejercicio n#3
% Calcule la inversa de las matrices $m_i$ utilizando la funci�n que emplea la 
% descomposici�n PLU y la funci�n que emplea la descomposici�n de Cholesky. 
% Reporte el tiempo de ejecuci�n de las funciones, calcule el error relativo 
% con respecto a la matriz identidad del producto $m_im_i^{-1}$. Comente sus resultados.

%% Bibliografia

%% Codigo
# <include>act_a2.m</include>