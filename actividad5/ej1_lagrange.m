function retval = ej1_lagrange (x, y)
  
  X = linspace(2000, 2007,500);
  
  plot(X, lagrange(x,y,X),x,y,'rx')

endfunction
