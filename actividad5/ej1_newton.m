function retval = ej1_newton (x,y)
  
  X = linspace(-3, 2, 500);
  
  x = x.-2003;
  
##  plot(X, lagrange(x,y,X),x,y,'rx')
  
  diag_dd = newton(x,y);
  plot(X, arrayfun(@(X) newton_aux(x,y,X,diag_dd), X),x,y,'rx')
  
##  plot(X, arrayfun(@(X) newton_interpolation(x,y,X), X),x,y,'rx')

endfunction
