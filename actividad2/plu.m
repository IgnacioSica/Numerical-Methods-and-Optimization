function [P,L,U] = plu (M)
  n = size(M);
  P = eye(n);
  L = zeros(n);
  U = M;

  ColumnIndex = 1;
  while (ColumnIndex <= n - 1)
    ColumnVector = U(ColumnIndex:end, ColumnIndex);
    [max_value, IndexOfMaximum] = max(abs(ColumnVector));
    IndexOfMaximum = IndexOfMaximum + ColumnIndex - 1;
    
    P([ColumnIndex IndexOfMaximum],:) = P([IndexOfMaximum ColumnIndex],:);
    L([ColumnIndex IndexOfMaximum],:) = L([IndexOfMaximum ColumnIndex],:);
    U([ColumnIndex IndexOfMaximum],:) = U([IndexOfMaximum ColumnIndex],:);
    
    RowIndex = ColumnIndex + 1;
    while (RowIndex <= n)
      s = (-1 * U(RowIndex, ColumnIndex)) / U(ColumnIndex, ColumnIndex);
      U(RowIndex, :) = U(RowIndex, :) + U(ColumnIndex, :) * s;
      L(RowIndex, ColumnIndex) = s * -1;
      RowIndex = RowIndex + 1;
    endwhile
    ColumnIndex = ColumnIndex + 1;
  endwhile
  L = L + eye(n);
endfunction