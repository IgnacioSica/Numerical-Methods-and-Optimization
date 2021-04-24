function retval = ej3 (m)
  disp ("Cholesky reciprocal matrix")
  tic ();
  m_inv_chol = rm_cholesky(m);
  toc ()
  error = norm(m * m_inv_chol - eye(size(m))) / norm(eye(size(m)));
  printf("Cholesky error: %d", error),
  disp ("")
  
  disp ("PLU reciprocal matrix")
  tic ();
  m_inv_plu = rm_plu(m);
  toc ()
  error = norm(m * m_inv_plu  - eye(size(m))) / norm(eye(size(m)));
  printf("PLU error: %d", error), 
  disp (""),disp ("")
endfunction
