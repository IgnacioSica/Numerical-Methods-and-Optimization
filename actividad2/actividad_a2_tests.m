%M = [n*n];

P = eye(n);
L = zeros(n);
U = M;

ColumnIndex = 0;
while (ColumnIndex < n-1)
  ColumnVector = 
endwhile



M ? Input n�n matrix
P ? n�n identity matrix
L ? n�n zero matrix
U ? M
ColumnIndex ? 0
WHILE (ColumnIndex < n-1)
  ColumnVector ? column ColumnIndex, rows ColumnIndex to n of U
  IndexOfMaximum ? index of maximum absolute value in ColumnVector
  P ? swap row ColumnIndex and row IndexOfMaximum in P
  L ? swap row ColumnIndex and row IndexOfMaximum in L
  U ? swap row ColumnIndex and row IndexOfMaximum in U
  RowIndex ? ColumnIndex + 1
  WHILE (RowIndex < n)
    s ? -1 �(element at row RowIndex, column ColumnIndex of U) /
    (element at row RowIndex, column ColumnIndex of U)
    row Update of U ? (row RowIndex of U) + s �(row ColumnIndex of U)
    element at row RowIndex, column ColumnIndex of L ? -1 � s
    RowIndex ? RowIndex + 1
  END WHILE
  ColumnIndex ? ColumnIndex + 1
END WHILE
L ? L + (n�n identity matrix)
RETURN P, L, U

%% [l, u, p] = lu (a)
%% [L] = chol(A,'lower')  

M = [];
L = zeros(n);
Index = 0;
while(Index < 0)
  L[Index, Index] = sqrt((M[Index, Index]) - sum(L[0 : Index, Index].^2))
  BelowIndex = Index + 1;
  while(BelowIndex < n)
    L[BelowIndex, Index] = (M[BelowIndex, Index] - L[])/L[Index, Index]
    BelowIndex = BelowIndex + 1;
  endwhile
  Index = Index + 1;
endwhile
return L