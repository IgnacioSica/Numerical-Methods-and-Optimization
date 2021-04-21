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

% load datos

%% Ejercicio n#1
% Utilizando los algoritmos desarrollados resuelva los sistemas de ecuaciones 
% $a_i*y_i=b_i$ usando la descomposición PLU y para cada caso reporte el tiempo 
% requerido por la computadora para resolver el problema, así como también 
% calcule el error relativo con respecto a los vectores b $E_i=(a_i*y - b_i)/b_i$, 
% el número de dígitos significativos que se obtienen y el número de condición 
% de la matriz de coeficientes. Comente sus resultados.

tic();
y1_plu = sem_plu(a1, b1);
time_a1_plu = toc ()
error_y1_plu = relative_error(a1,b1,y1_plu)

tic();
y2_plu = sem_plu(a2, b2);
time_a2_plu = toc ()
error_y2_plu = relative_error(a2,b2,y2_plu)

tic();
y3_plu = sem_plu(a3, b3);
time_a3_plu = toc ()
error_y3_plu = relative_error(a3,b3,y3_plu)

tic();
y4_plu = sem_plu(a4, b4);
time_a4_plu = toc ()
error_y4_plu = relative_error(a4,b4,y4_plu)

tic();
y5_plu = sem_plu(a5, b5);
time_a5_plu = toc ()
error_y5_plu = relative_error(a5,b5,y5_plu)

tic();
y6_plu = sem_plu(a6, b6);
time_a6_plu = toc ()
error_y6_plu = relative_error(a6,b6,y6_plu)

%% Ejercicio n#2
% Utilizando los algoritmos desarrollados resuelva los sistemas de ecuaciones 
% $mi*yi=bi$ usando la descomposición PLU y la descomposición de Cholesky y para 
% cada caso reporte el tiempo requerido por la computadora para resolver el 
% problema, así como también calcule el error relativo con respecto a los 
% vectores b $E_i=(m_i*y - b_i)/b_i$, el número de dígitos significativos que se 
% obtienen y el número de condición de la matriz de coeficientes. Comente sus 
% resultados, compare el desempeño de los algoritmos ente sí.

%  tic();
%  y1 = sem_plu(m1, b1);
%  elapsed_time_m1_p = toc ();
%  error_y1 = relative_error(m1,b1,y1);
%  mean(error_y1)
%  tic();
%  y1 = sem_cholesky(m1, b1);
%  elapsed_time_m1_c = toc ();
%  error_y1 = relative_error(m1,b1,y1);
%  mean(error_y1)

%% Ejercicio n#3
% Calcule la inversa de las matrices $m_i$ utilizando la función que emplea la 
% descomposición PLU y la función que emplea la descomposición de Cholesky. 
% Reporte el tiempo de ejecución de las funciones, calcule el error relativo 
% con respecto a la matriz identidad del producto $m_im_i^{-1}$. Comente sus resultados.

tic ();
m1_inv_chol = rm_cholesky(m1);
elapsed_time_m1_c = toc ();

tic ();
m1_inv_plu = rm_plu(m1);
elapsed_time_m1_p = toc ();

tic ();
m2_inv_chol = rm_cholesky(m2);
elapsed_time_m2_c = toc ();

tic ();
m2_inv_plu = rm_plu(m2);
elapsed_time_m2_p = toc ();

tic ();
m3_inv_chol = rm_cholesky(m3);
elapsed_time_m3_c = toc ();

tic ();
m3_inv_plu = rm_plu(m3);
elapsed_time_m3_p = toc ();

tic ();
m4_inv_chol = rm_cholesky(m4);
elapsed_time_m4_c = toc ();

tic ();
m4_inv_plu = rm_plu(m4);
elapsed_time_m4_p = toc ();

% tic ();
% m5_inv_chol = rm_cholesky(m5);
% elapsed_time_m5_c = toc ();

% tic ();
% m5_inv_plu = rm_plu(m5);
% elapsed_time_m5_p = toc ();

%% Bibliografia

%% Codigo
# <include>act_a2.m</include>