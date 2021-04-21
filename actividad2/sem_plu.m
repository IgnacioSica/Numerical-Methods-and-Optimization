function [x] = sem_plu(A, b)
  [P, L, U] = plu(A);
  %[L, U, P] = lu(A);
  
  [y, msg] = SustitucionAdelante (L, P*b);
  [x, msg] = SustitucionAtras (U, y);
endfunction