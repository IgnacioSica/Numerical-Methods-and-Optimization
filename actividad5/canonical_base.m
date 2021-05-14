function p = canonical_base (x, y)
  x = x.-2003;
  y = y;
  
  n = size(x);
  A = ones(n,n);
  
  for (i = 1 : n)
    A(:, i) = x.^(i-1);
  end
  
  x = zeros(size(x));
  p = sem_plu(A, y);
endfunction
