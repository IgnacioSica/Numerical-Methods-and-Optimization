function retval = ej2 (m, b)
  c=cond(m);
  printf("Numero de condición: %d", c), 
  disp ("")
  disp ("Cholesky")
  tic();
  y = sem_cholesky(m, b);
  toc ();
  error = norm(m * y - b) / norm(b);
  printf("Error: %d", error),
  disp ("")
  Sd=floor(-log10(error/0.5));
  printf("Cifras significativas: %d", Sd),
  disp ("")
  disp ("PLU")
  tic();
  y = sem_plu(m, b);
  toc ();
  error = norm(m * y - b) / norm(b);
  printf("Error: %d", error),
  disp ("")
  Sd=floor(-log10(error/0.5));
  printf("Cifras significativas: %d", Sd),
  disp (""),disp ("")
endfunction
