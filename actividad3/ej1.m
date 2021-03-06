function ej1 (A, b, tol, Max_iter)
  x = zeros(size(b));
  
  disp("Jacobi:")
  tic();
  [x_sol_jacobi,err,total_iter] = jacobi (A, b, x, tol, Max_iter);
  time = toc ();
  printf("  Time elapsed: %ds", time), disp("")
  printf("  Error: %d", err), disp("")
  printf("  Total iterations: %d", total_iter), disp("")
  
  disp("SOR 0.5:")
  tic();
  [x_sol_sor_05,err,total_iter] = SOR(A, b, x, 0.5, tol, Max_iter);
  time = toc ();
  printf("  Time elapsed: %ds", time), disp("")
  printf("  Error: %d", err), disp("")
  printf("  Total iterations: %d", total_iter), disp("")
  
  disp("SOR 1.0:")
  tic();
  [x_sol_sor_10,err,total_iter] = SOR(A, b, x, 1.0, tol, Max_iter);
  time = toc ();
  printf("  Time elapsed: %ds", time), disp("")
  printf("  Error: %d", err), disp("")
  printf("  Total iterations: %d", total_iter), disp("")
  
  disp("SOR 1.6:")
  tic();
  [x_sol_sor_15,err,total_iter] = SOR(A, b, x, 1.6, tol, Max_iter);
  time = toc ();
  printf("  Time elapsed: %ds", time), disp("")
  printf("  Error: %d", err), disp("")
  printf("  Total iterations: %d", total_iter), disp("")
  
  disp("Gradiente Conjugado:")
  tic();
  [x_sol_gc,err,total_iter] = GC(A, b, x, tol, Max_iter);
  time = toc ();
  printf("  Time elapsed: %ds", time), disp("")
  printf("  Error: %d", err), disp("")
  printf("  Total iterations: %d", total_iter), disp("")
endfunction