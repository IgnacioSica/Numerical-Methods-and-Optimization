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

a = {a1,a2,a3,a4,a5};
b = {b1,b2,b3,b4,b5};

%% Ejercicio n#1
% Utilizando el archivo datos1 resolver los sistemas de ecuaciones $a_ix_i=b_i$, 
% para i=1,2,...,5, con los algoritmos de Jacobi, SOR con ?=0.5,1,1.5 y Gradiente 
% Conjugado. Compare los errores relativos con respecto a los vectores bi y el 
% tiempo de solución necesario. Comente sus resultados.

disp("Ejercicio 1:"), disp("")

tol      = 0.0000001;
max_iter = 4500;

for i = 1 : 5
  printf("a%d: ", i), disp("")
  ej1(a{i}, b{i}, tol, max_iter);
  disp("")
endfor

%%
% A modo de comienzo de analisis vale la pena descatar como a medida que aumenta el
% tamano de las matrices la cantidad de computo necesario para resolver los sistemas
% de ecuaciones mediante todos los metodos de aproximacion trabajados aumenta 
% considerablemente. A partir de las diferentes pruebas se pueden destacar varios 
% puntos significativos que muestran las diferencias entre los algoritmos:
% *(1)* es que el algoritmo del gradiente conjugado es extremadamente rapido en 
% comparacion con los otros dos, no solo necesita de un numero de iteraciones 
% insignificantes con respecto a los otros sino que tambien alcanza una precision 
% que el algoritmo de SOR y jacobi en ocaciones ni siquiera alcanza, es muy visible
% ahora como es un algoritmo tan influyente en el mundo actual y como este
% ayudo al progreso de la ciencia habilitando a cientificos a resolver sistemas en 
% cuestion de minutos que antes podrian significar dias de computacion. *(2)* se nota
% como a medida que aumenta el tamano de las matrices es cada vez mas complicado 
% alcanzar la tolerancia deseada, en todos los algoritmos es igual. *(3)* dependiendo
% de la relajacion en el algoritmo de SOR se pueden obtener resultados muy distintos.
% En el caso de que de la bajo relajacion se puede notar como el algoritmo necesita
% un gran numero de iteraciones y en el caso de las dos matrices mas grandes ni siquiera 
% con 4500 iteraciones logra la tolerancia deseada. A medida que aumenta el omega, es
% decir, se sobre relaja, los resultados son muy distintos convergiendo hacia la 
% solucion de una manera mucho mas rapida y asi conseguir una tolerancia mejor en 
% menos iteraciones(decidi cambiar el omega de 1.5 por 1.6 ya que estuve realizando
% pruebas y con 1.6 se convergia de manera mas rapido hacia el resultado). *(4)*
% Se puede notar como el algoritmo de jacobi necesita de mas iteraciones para llegar
% a la tolerancia deseada que el algoritmo de SOR con una omega mayor a uno pero sin
% embargo necesita de menos tiempo para resolverlo, esto se debe a la naturaleza de
% cada algoritmo siendo la iteracion en el algoritmo de SOR mas costosa computacionalmente
% hablando que la de jacobi.


%% Ejercicio n#2
% Utilizando el archivo datos2  resolver los sistemas de ecuaciones $a_ix_i=b_i$, 
% para i=3,...,14, utilizando la descomposición PLU. Calcule los errores 
% relativos con respecto a los vectores bi, los errores relativos con respecto 
% a la solución verdadera en todos los casos que es un vector de unos en todas 
% las entradas, calculo los números de condición de los sistemas (que coincidan 
% con la definición del libro) y concluya si los resultados obtenidos se pueden 
% explicar con esta información. Justifique sus conclusiones. 

load datos2

a = {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14};
b = {b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14};

disp("Ejercicio 2:"), disp("")

for i = 3 : 13
  printf("a%d: ", i), disp("")
  ej2(a{i}, b{i});
  disp("")
endfor

%%
% Con los resultado de este ejercicio se pueden sacar resoluciones muy intersantes
% en cuanto a los errores con respecto a la pre-imagen e imagen de las funciones. 
% A medida que las funciones aumentan se puede notar como el error con respecto a los
% vectores bi disminuye y en todos los casos uno podria decir que se trata de un resultado
% muy confiable pero, cuando se analiza el error con respecto a la solucion verdadera
% del sistema se puede observar como el este segundo error es mucho mas grande y en
% el caso de las matrices mas grandes cuenta con *0* cifras significativas. Con respecto
% al tiempo necesario para resolver los sitemas se puede destacar que es muy chico
% no superando el segundo en ningun caso. Otro elemento a destacar del ejercicio es 
% nuevamente la relevancia del numero de condicion, se puede observar como por cada 
% orden de magnitud del numero de condicion disminuye en uno la cantida de digitos
% significativos. Con un numero de condicion lo suficientemente grande se llega al
% punto de no obtener ninguna cifra significativa ya que la precicion con la que se 
% trabaja no es suficiente. Con esto en mente se puede concluir que los algoritmos de 
% aproximacion es muy superiror al algoritmo de resolucion mediante plu ya que 
% se pueden obtener resultados con una tolerancia mucho menor y en matrices significativamente 
% mas grandes.

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

%% forward
# <include>forward.m</include>

%% SustitucionAtras
# <include>SustitucionAtras.m</include>

%% Codigo ej1
# <include>ej1.m</include>

%% Codigo ej2
# <include>ej2.m</include>
