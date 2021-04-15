function [Minv] = rm_cholesky(M)
  [n, m] = size(M);
  I = eye(n);
  [L] = cholesky(M);
  
  Minv = zeros(n);
  
  for(i = 1 : n)
    m_i = SustitucionAdelante(L', I(:, i));
    x_i = SustitucionAtras(L, m_i);
    Minv(i, :) = x_i;
  endfor
endfunction