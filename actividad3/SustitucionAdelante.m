function [y,msg] = SustitucionAdelante (L, b)
  [mL,nL] = size(L);
  [mb,nb] = size(b);
  
  ## 
  if mL ~= nL
    msg = 0;
    y = inf;
    disp('L no es cuadrada')
    return; # fin de la funcion
  elseif (mL ~= mb) || nb ~= 1
    msg = 0;
    y = inf;
    disp('L y b son de dimensiones incompatibles')
    return; # fin de la funcion
  endif
  for ii=1:mL
    if abs(L(ii,ii)) < eps
      msg = 0;
      y = inf;
      disp('L tiene pivote menor que eps')
      return; # fin de la funcion
    endif
  endfor
  
  ## Inicio del algoritmo
  y = 0*b; 
  
  if (L(1,1)==1)
    y(1) = b(1);
  else
    y(1) = b(1)/L(1,1);
  endif
  for ii=2:mL
    y(ii) = b(ii)-L(ii,1:ii-1)*y(1:ii-1);
    pivote = L(ii,ii);
    if (pivote ~=1)
      y(ii) = y(ii)/pivote;
    endif
  endfor
  
  msg = 1; 
 % disp('Algoritmo finalizo normalmente');  
    
  endfunction
  