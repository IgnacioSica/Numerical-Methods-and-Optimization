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
## @deftypefn {} {[@var{X}, @var{Y}, @var{Z}] =} mm2 (@var{A}, @var{B}, @var{C})
## Operaciones varias con numeros reales
##
## Los argumentos @var{A}, @var{B}, @var{C} son numeros reales
##
## Las salidas @var{X}, @var{Y}, @var{Z} son numeros reales con
##
## @var{X} = @var{A} * @var{B} * @var{C}
## 
## @var{Y} = @var{A} + @var{B} + @var{C}
##
## @var{Z} * @var{X} + @var{Y}
## 
##
## @seealso{Referencia a otras funciones}
## @end deftypefn

## Author: Jose-Job <Jose-Job@JJFG-ASUS>
## Created: 2020-03-11

function [X, Y, Z] = mm2 (A, B, C)
X = A + B + C;
Y = A * B * C;
Z = X + Y;
endfunction
