%% Actividad $A_3$.
% *Algebra Lineal, Métodos Iterativos*
%
% Ignacio Sica
%
% 24/04/21

%% Programe los siguientes algoritmos:
% Algoritmo de Jacobi para la solución de sistemas de ecuaciones lineales.
% 
% Algoritmo de Sobre relajación sucesiva (SOR) para la solución de sistemas de 
% ecuaciones lineales.
% 
% Algoritmo de gradiente conjugado para la solución de sistemas de ecuaciones 
% lineales (Tabla 3.1; Walter 2014)

load datos1
load datos2

a = {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14};
b = {b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14};

%% Ejercicio n#1
% Utilizando el archivo datos1 resolver los sistemas de ecuaciones $a_ix_i=b_i$, 
% para i=1,2,...,5, con los algoritmos de Jacobi, SOR con ?=0.5,1,1.5 y Gradiente 
% Conjugado. Compare los errores relativos con respecto a los vectores bi y el 
% tiempo de solución necesario. Comente sus resultados.

tol      = 0.00000001;
max_iter = 250;

for i = 1 : 5
  printf("a%d: ", i), disp("")
  ej1(a{i}, b{i}, tol, max_iter);
  disp("")
endfor

%%
% Comentarios sobre resultados

%% Ejercicio n#2
% Utilizando el archivo datos2  resolver los sistemas de ecuaciones $a_ix_i=b_i$, 
% para i=3,...,14, utilizando la descomposición PLU. Calcule los errores 
% relativos con respecto a los vectores bi, los errores relativos con respecto 
% a la solución verdadera en todos los casos que es un vector de unos en todas 
% las entradas, calculo los números de condición de los sistemas (que coincidan 
% con la definición del libro) y concluya si los resultados obtenidos se pueden 
% explicar con esta información. Justifique sus conclusiones. 

for i = 3 : 13
  printf("a%d: ", i), disp("")
  ej2(a{i}, b{i});
  disp("")
endfor

%%
% Comentarios sobre resultados

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

%% Jacobi
# <include>jacobi.m</include>

%% SOR
# <include>SOR.m</include>

%% Gradiente conjugado
# <include>GC.m</include>

%% SustitucionAdelante
# <include>SustitucionAdelante.m</include>

%% SustitucionAtras
# <include>SustitucionAtras.m</include>

%% Codigo ej1
# <include>ej1.m</include>

%% Codigo ej2
# <include>ej2.m</include>
