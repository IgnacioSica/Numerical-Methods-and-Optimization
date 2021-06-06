function [y] = fun2(x)

y = zeros(size(x)(1), 1);

y(1) = x(1)^2 - x(1)*x(2) + x(2)^2 - 3;
y(2) = x(1) + x(2) - x(1)*x(2);

endfunction 
