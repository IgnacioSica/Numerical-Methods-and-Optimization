function y = newton_aux (x,y,X,diag_dd)
  [n,m] = size(x);
  mat = ones(1,n);
  for ii = 2:length(diag_dd) - 1
      mat(ii) = mat(ii-1) .* (X - x(ii-1));
  end
  y = mat .* diag_dd;
  y = sum(y);
endfunction

##
##Df(1) = 1;
##c(1) = a(1);
##for j = 2 : n
##   Df(j)=(p - x(j-1)) .* Df(j-1);
##   c(j) = a(j) .* Df(j);
##end
##
##fp=sum(c);