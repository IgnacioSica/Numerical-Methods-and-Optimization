## Copyright (C) 2020 Jose-Job
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {[@var{y}, @var{msg}] =} SustitucionAdelante (@var{L}, @var{b})
##
## Solucion del sistema  @var{L}@var{y} = @var{b} por sustitución hacia adelante donde
##
## @var{L} es una matriz triangular inferior
##
## @var{b} un vector columna de constantes
##
## @var{y} un vector columna, solucion del sistema de ecuaciones
##
## @var{msg} es igual a 1 si la función resolvió exitosamente el
## sistema de ecuaciones, 0 si no pudo resolver el sistema de ecuaciones
##
## @seealso{}
## @end deftypefn

## Author: Jose-Job <Jose-Job@JJFG-ASUS>
## Created: 2020-03-25

function [y,msg] = SustitucionAdelante (L, b)
  [mL,nL] = size(L);
  [mb,nb] = size(b);
  
  ## 
  if mL ~= nL
    msg = 0;
    y = inf;
    disp('L no es cuadrada')
    return; # fin de la funcion
  elseif (mL ~= mb) || nb ~= 1
    msg = 0;
    y = inf;
    disp('L y b son de dimensiones incompatibles')
    return; # fin de la funcion
  endif
  for ii=1:mL
    if abs(L(ii,ii)) < eps
      msg = 0;
      y = inf;
      disp('L tiene pivote menor que eps')
      return; # fin de la funcion
    endif
  endfor
  
  ## Inicio del algoritmo
  y = 0*b; 
  
  if (L(1,1)==1)
    y(1) = b(1);
  else
    y(1) = b(1)/L(1,1);
  endif
  for ii=2:mL
    y(ii) = b(ii)-L(ii,1:ii-1)*y(1:ii-1);
    pivote = L(ii,ii);
    if (pivote ~=1)
      y(ii) = y(ii)/pivote;
    endif
  endfor
  
  msg = 1; 
 % disp('Algoritmo finalizo normalmente');  
    
  endfunction
  