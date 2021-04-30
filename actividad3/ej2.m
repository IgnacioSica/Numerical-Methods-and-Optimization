function ej2 (A, b)
  
  disp ("  PLU")
  tic();
  y = sem_plu(A, b);
  time = toc ();
  printf("  Time elapsed: %ds", time), disp("")
  error = norm(A * y - b) / norm(b);
  printf("  Error 1: %d", error),
  disp ("")
  sol = ones(size(y),1);
  error = norm(y - sol) / norm(sol);
  printf("  Error 2: %d", error),
  disp ("")
  Sd=floor(-log10(error/0.5));
  printf("  Cifras significativas: %d", Sd),
  disp("")
  nc = cond(A);
  printf("  Número de condición: %d", nc),
  disp("")

endfunction
