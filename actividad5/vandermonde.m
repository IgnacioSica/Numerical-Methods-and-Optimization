function p = vandermonde(x, y)
  x = x;
  y = y;
  
  [n,m] = size(x);
  A = ones(n,n);
  
  for (i = 1 : n)
    A(:, n-i+1) = x.^(i-1);
  end
  
  p = sem_plu(A, y);
endfunction
