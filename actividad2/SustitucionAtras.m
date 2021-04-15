function [y,msg] = SustitucionAtras (L, b)
  [mL,nL] = size(L);
  [mb,nb] = size(b);
  
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
  
  if (L(end,end)==1)
    y(end) = b(end);
  else
    y(end) = b(end)/L(end,end);
  endif
  for ii=1:nL-1
    y(nL-ii) = b(nL-ii)-L(nL-ii,nL-ii:end)*y(nL-ii:end);
    pivote = L(nL-ii,nL-ii);
    if (pivote ~=1)
      y(nL-ii) = y(nL-ii)/pivote;
    endif
  endfor
  
  msg = 1; 
 % disp('Algoritmo finalizo normalmente');  
    
endfunction
  
  %%for ii=2:nL
    %%y(nL-ii + 1) = b(nL-ii + 1)-L(nL-ii + 1,nL-ii-1 + 2:end)*y(nL-ii-1 + 2:end);
    %%pivote = L(nL-ii + 1,nL-ii + 1);
    %%if (pivote ~=1)
      %%y(nL-ii + 1) = y(nL-ii + 1)/pivote;
    %%endif
  %%endfor