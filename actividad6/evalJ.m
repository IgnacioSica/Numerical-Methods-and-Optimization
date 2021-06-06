function [J] = evalJ(x)

J = zeros(size(x)(1));

J(1,1) = 2*x(1) - x(2);
J(1,2) = - x(1) + 2*x(2);
J(2,1) = 1 - x(2);
J(2,2) = 1 - x(1);

endfunction 