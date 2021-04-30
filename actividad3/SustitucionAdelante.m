function [y] = SustitucionAdelante (L, b)
  [mL,nL] = size(L);
  [mb,nb] = size(b);
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
endfunction
  