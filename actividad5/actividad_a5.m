%% Actividad $A_4$.
% *Interpolación y regresión*
%
% Ignacio Sica
%
% 06/05/21

load datos.mat

%% Problema 1. 
%
% Es posible que sean útiles as funciones *qr* y *polyval*. No se pueden utilizar las 
% funciones *polyfit* o *vander*.
%
% Considere los datos del archivo datos.mat que describe la cantidad 
% de elementos de una fábrica en los años 2000 al 2007. 
% 
% Encuentre un polinomio de interpolación para dichos datos usando la base canónica.
%
% Encuentre un polinomio de interpolación para dichos datos usando polinomios de Lagrange.
%
% Encuentre un polinomio de interpolación para dichos datos usando polinomios de Newton.
%
% Grafíque los polinomios obtenidos anteriormente en el intervalo de 1999 a 2008 
% y compare con los datos proporcionados por el archivo. Comente sus resultados
% ¿Se puede utilizar dicho polinomio como instrumento de predicción para el año 
% 2050? Justifique su respuesta.
%
% ¿Se puede utilizar dicho polinomio como instrumento de para corroborar la cantidad 
% de elementos fabricados en el año 1980? Justifique su respuesta. 
%
% ¿Qué es el fenómeno de Runge? (100 palabras o menos). ¿Se presenta en este problema?
%

%% Problema 2. Utilizando los datos del archivo datos.mat 
% Encuentre polinomio de aproximación de grado 4 usando la base canónica.
%
% Encuentre polinomio de aproximación de grado 4 usando polinomios de Lagrange.
%
% Encuentre polinomio de aproximación de grado 4 usando polinomios de Newton.
%
% Evalúe los polinomios de los incisos anteriores en un intervalo ligeramente 
% mayor al que describen los datos. El intervalo debe tener al menos 500 puntos. 
%
% Compare sus resultados con los valores verdaderos. Comente el comportamiento de 
% las aproximaciones.
%

##https://www.unioviedo.es/compnum/labs/PYTHON/Interpolation.html
##https://www.youtube.com/watch?v=Az2jhvu2i2I
##http://www.ugr.es/~mpasadas/ftp/Inter2.pdf