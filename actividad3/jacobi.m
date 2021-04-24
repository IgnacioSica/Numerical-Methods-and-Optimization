function [X_sol,err,total_iter] = jacobi (A, b, X0, tol, Max_iter)
  err = 10;
  contador = 0;
  D = diag(diag(A));
  M1 = A-D;
  Dinv = diag( 1./diag(A) );
  while err>tol && contador<Max_iter
    X1 = Dinv*(-M1*X0 + b);
    err = norm(X1-X0);
    contador = contador + 1;
    X0 = X1;
  endwhile
  X_sol = X1;
  total_iter = contador;
endfunction

