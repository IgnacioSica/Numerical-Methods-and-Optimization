function retval = ej1_lagrange (x, y)
  
  X = linspace(-3, 4, 500);
  
  x = x.-2003;
  
  plot(X, lagrange(x,y,X),x,y,'rx')

endfunction
