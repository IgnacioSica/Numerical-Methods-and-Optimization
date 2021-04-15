function [L] = cholesky (M)
  L = zeros(size(M));
  Index = 1;
  while(Index <= size(M))
    L(Index, Index) = sqrt(M(Index, Index) - sum(L(1 : Index, Index).^2));
    BelowIndex = Index + 1;
    while(BelowIndex <= size(M))
      L(Index, BelowIndex) = (M(BelowIndex, Index) - sum(L(1 : Index, Index).*L(1 : Index, BelowIndex)))/L(Index, Index);
      BelowIndex = BelowIndex + 1;
    endwhile
    Index = Index + 1;
  endwhile
endfunction