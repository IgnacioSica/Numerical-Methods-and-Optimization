function retval = ej1_vandermonde (x, y)
  X = linspace(-3, 4, 500);
  
  x = x.-2003;
  
  p = vandermonde(x,y);
  plot(X, polyval(p,X),x,y,'rx')
  
##  P = polyfit(x,y,8)
##  plot(X, polyval(P,X),x,y,'rx')
endfunction
