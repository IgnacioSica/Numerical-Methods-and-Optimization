function [X_sol,err,total_iter] = SOR (A, b, X0, om, tolerance, max_iter)
  
  D = diag(diag(A));
  L = tril(A, -1);
  U = triu(A, +1);
  
  err = 10;
  counter = 0;
  
  while err > tolerance && counter < max_iter
    
    X1 = SustitucionAdelante(D + om * L, om * b - (om * U + (om -1) * D) * X0);
    
    err = norm(X1-X0);
    counter = counter + 1;
    X0 = X1;
    
  endwhile
  
  X_sol = X1;
  total_iter = counter;
  
endfunction
