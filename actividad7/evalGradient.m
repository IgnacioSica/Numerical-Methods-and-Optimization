function [G] = evalGradient(x)

G = ones(size(x)(1),1);

G(1) = 2*x(1) - 2*x(2) - 2;
G(2) = 4*x(2) - 2*x(1);

endfunction 

% f(x) = x1^2 + 2*x2^2 - 2*x1*x2 - 2*x1;