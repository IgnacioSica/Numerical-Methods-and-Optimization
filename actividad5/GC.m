function [x_sol, err, total_iter] = GC (A, b, x, tolerance, max_iter)
  
  err = 10;
  counter = 0;
  
  r   = b - A * x;
  d   = r;
  sig_0 = normest(r)^2;
  k     = 0;
  
  while normest(r) > tolerance && k < max_iter
    
    sig_a = d' * (A * d);
    lam = sig_0 / sig_a;
    x = x + lam * d;
    r = r - lam * A * d;
    sig_1 = normest(r)^2;
    bet = sig_1 / sig_0;
    d = r + bet * d;
    sig_0 = sig_1;
    k = k + 1;
    
  endwhile
  
  x_sol = x;
  err = normest(r);
  total_iter = k;
  
endfunction
