## Copyright (C) 2021 jjobf
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{df} =} der_cent (@var{fun}, @var{xs}, @var{h})
## 
## Calcula la aproximación de la primera derivada de la función @var{fun} en el punto 
## @var{xs} e incremento @var{h} utilizando la aproximación de diferencias
## divididas centradas de segundo orden, ecuación (10.8) del libro  
## R. Khoury, D. W. Harder, Numerical Methods and Modelling for Engineering, Springer 2016
##
## La @var{h} puede ser un vector.
##
## @seealso{}
## @end deftypefn

## Author: jjobf <jjobf@RYZENLENOVO-JJF>
## Created: 2021-06-24


function [df] = der_cent (fun,xs,h)
  df = (fun(xs+h)-fun(xs-h))/2./h;

endfunction
