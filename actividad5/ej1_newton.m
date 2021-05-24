function retval = ej1_newton (x,y)
  
  X = linspace(-3, 4, 500);
  
  x = x.-2003;
  
  c = newton(x,y);
  plot(X, arrayfun(@(X) newton_aux(x,y,X,c), X),x,y,'rx')
  
##  plot(X, arrayfun(@(X) newton_interpolation(x,y,X), X),x,y,'rx')

endfunction
