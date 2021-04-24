function [x] = sem_plu(A, b)
  [P, L, U] = plu(A);
  [y, msg] = SustitucionAdelante (L, P*b);
  [x, msg] = SustitucionAtras (U, y);
endfunction
