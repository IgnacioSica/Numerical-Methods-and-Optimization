function diag_dd = newton (x, y)
  [n,m]= size(x);
  dd = zeros(n, n+1);
  
  dd(:,1) = x;
  dd(:,2) = y;
  
  column_index = 3;
  while(column_index <= (n + 1))
    row_index = (column_index - 1);
    while(row_index <= n)
      dd(row_index, column_index) = (dd(row_index, column_index - 1) - dd(row_index - 1, column_index - 1))...
                                  / (dd(row_index, column_index - 2) - dd(row_index-1, column_index -1));
      row_index = row_index + 1;
    endwhile
    column_index = column_index + 1;
  endwhile 
  
  diag_dd = diag(dd(:, 2:end))
  
  dd
  
##  

##  n = length(x);
##  dd(1) = y(1);
##  
##  for k = 1 : n - 1
##    dd(k, 1) = (y(k+1) - y(k))/(x(k+1) - x(k));
##  end
##  
##  dd
  
endfunction

##
##n = length(x);
##a(1) = y(1);
##for k = 1 : n - 1
##   d(k, 1) = (y(k+1) - y(k))/(x(k+1) - x(k));
##end
##for j = 2 : n - 1
##   for k = 1 : n - j
##      d(k, j) = (d(k+1, j - 1) - d(k, j - 1))/(x(k+j) - x(k));
##   end
##end
##
##d
##
##for j = 2 : n
##   a(j) = d(1, j-1);
##end
##
##a