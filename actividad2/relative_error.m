function error = relative_error (a, b, y)
  error = norm(a * y - b) / norm(b);
endfunction
