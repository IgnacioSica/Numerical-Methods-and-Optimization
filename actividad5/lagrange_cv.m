function [y] = lagrange_cv(x, x0, y0)

    % x0 - vector containing inputs (x values)
    % y0 - vector containing outputs (results for these x values
    % x - value you want to compute, for interpolation
    % y - computed value

    n = size(x0, 1); 
    y = 0;

    for i=1:n
        p = 1;
        for j=1:n

            if j == i   % avoiding fancy division by 0
                continue;
            endif;

            p *= (x-x0(j)) / (x0(i)-x0(j));

        endfor;

        y += y0(i) * p;   
    endfor;
endfunction;
