function [y,msg] = SustitucionAtras (U, b)
  [mU,nU] = size(U);
  [mb,nb] = size(b);
  
  if mU ~= nU
    msg = 0;
    y = inf;
    disp('U no es cuadrada')
    return; # fin de la funcion
  elseif (mU ~= mb) || nb ~= 1
    msg = 0;
    y = inf;
    disp('U y b son de dimensiones incompatibles')
    return; # fin de la funcion
  endif
  for ii=1:mU
    if abs(U(ii,ii)) < eps
      msg = 0;
      y = inf;
      disp('U tiene pivote menor que eps')
      return; # fin de la funcion
    endif
  endfor
  
  ## Inicio del algoritmo
  y = 0*b; 
  
  if (U(end,end)==1)
    y(end) = b(end);
  else
    y(end) = b(end)/U(end,end);
  endif
  for ii=1:nU-1
    y(nU-ii) = b(nU-ii)-U(nU-ii,nU-ii:end)*y(nU-ii:end);
    pivote = U(nU-ii,nU-ii);
    if (pivote ~=1)
      y(nU-ii) = y(nU-ii)/pivote;
    endif
  endfor
  
  msg = 1; 
 % disp('Algoritmo finalizo normalmente');  
    
endfunction
