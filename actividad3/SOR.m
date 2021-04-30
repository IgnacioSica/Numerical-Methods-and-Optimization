function [X_sol,err,total_iter] = SOR (A, b, X, om, tolerance, max_iter)
  
  D = diag(diag(A));
  L = tril(A, -1);
  U = triu(A, +1);
  
  err = 10;
  counter = 0;
  
  j = D + om * L;
  k = om * b;
  i = (om * U + (om -1) * D);
  
  while err > tolerance && counter < max_iter
    
    X = forward(j, k - i * X);
    err = norm(A * X - b) / norm(b);
    counter = counter + 1;
    
  endwhile
  
  X_sol = X;
  total_iter = counter;
  
endfunction
