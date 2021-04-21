function [Minv] = rm_plu(M)
  [n, m] = size(M);
  I = eye(n);
  [P,L,U] = plu(M);
  %[L, U, P] = lu(M);
  Minv = zeros(n);
  
  for(i = 1 : n)
    m_i = SustitucionAdelante(L, P'*I(:, i));
    x_i = SustitucionAtras(U, m_i);
    Minv(i, :) = x_i;
  endfor
endfunction