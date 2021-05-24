function c = newton (x, y)
  [n,m]= size(x);
  dd = zeros(n, n+1);
  
  dd(:,1) = x;
  dd(:,2) = y;
  
  column_index = 3;
  
  while(column_index <= (n + 1))
    row_index = 1;
    while(row_index <= n - column_index + 2)
      dd(row_index, column_index) = (dd(row_index+1, column_index - 1) - dd(row_index, column_index - 1)) ...
                                  / (x(row_index + column_index - 2) - x(row_index));
      row_index = row_index + 1;
    endwhile
    column_index = column_index + 1;
  endwhile 
  
  c = dd(1,2:end);

endfunction