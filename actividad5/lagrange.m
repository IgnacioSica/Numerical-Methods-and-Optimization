function Y = lagrange(x, y, X)
[n,m] = size(x);
x = x;
Y = 0;
function_index = 1;
while(function_index <= n)
  point_index = 1;
  numerator = 1;
  denominator = 1;
  while(point_index <= n)
    if(point_index != function_index)
      numerator = numerator .* (X - x(point_index));
      denominator = denominator * (x(function_index) - x(point_index));
    endif
    point_index = point_index + 1;
  endwhile
  Y = Y + (y(function_index) .* numerator ./ denominator);
  function_index = function_index + 1;
endwhile
endfunction
