function retval = ej1 (a, b)
  tic();
  y = sem_plu(a, b);
  toc ();
  error = norm(a * y - b) / norm(b);
  printf("Error: %d", error),
  disp ("")
  Sd=floor(-log10(error/0.5));
  printf("Cifras significativas: %d", Sd), 
  disp (""),
  c=cond(a);
  printf("Numero de condición: %d", c), 
  disp (""),disp ("")
endfunction
