function retval = ej1 ()
  warning('off', 'all');
  w = 10;
  xi = pi/(6*w);
  h = 0-0.01:0.00001:0+0.01;
  
  fk0 = cos(w*(xi));
  fk1 = fk0 - (sin(w*(xi)) * w * h.^1) / factorial(1);
  fk2 = fk1 - (cos(w*(xi)) * w .^ 2 * h.^2) / factorial(2);
  fk3 = fk2 + (sin(w*(xi)) * w .^ 3 * h.^3) / factorial(3);
  fk4 = fk3 + (cos(w*(xi)) * w .^ 4 * h.^4) / factorial(4);
  fk5 = fk4 - (sin(w*(xi)) * w .^ 5 * h.^5) / factorial(5);
  
  semilogy(h, abs(fk0 - cos(w * (xi + h))));
  hold on;
  semilogy(h, abs(fk1 - cos(w * (xi + h))));
  hold on; 
  semilogy(h, abs(fk2 - cos(w * (xi + h))));
  hold on;
  semilogy(h, abs(fk3 - cos(w * (xi + h))));
  hold on; 
  semilogy(h, abs(fk4 - cos(w * (xi + h))));
  hold on;  
  semilogy(h, abs(fk5 - cos(w * (xi + h))));
  hold on; 
  
  legend('k = 0', 'k = 1', 'k = 2', 'k = 3', 'h = 4', 'k = 5');
  title( 'Absolute-Error in Taylor' );
endfunction
