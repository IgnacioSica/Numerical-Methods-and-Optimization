function [x] = sem_cholesky(A, b)
  [L] = cholesky(A);
  [y, msg] = SustitucionAdelante (L', b);
  [x, msg] = SustitucionAtras(L, y);
endfunction