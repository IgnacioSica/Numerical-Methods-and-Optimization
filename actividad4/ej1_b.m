function retval = ej1_b (input1, input2) 
  w = 10;
  xi = pi/(6*w);
##  h = logspace(0.001, 0.9999, 100);
##  h = 0.01
  
  xgraph = xi-0.25:0.01:xi+0.25;
  
  fk0 = cos(w*(xi));
  plot(xgraph, fk0);
  hold on; 
  fk1 = fk0 - (sin(w*(xi)) * w      * xgraph.^1) / factorial(1);
  plot(xgraph, fk1);
  hold on;
  fk2 = fk1 - (cos(w*(xi)) * w .^ 2 * xgraph.^2) / factorial(2);
  plot(xgraph, fk2);
  hold on;
  fk3 = fk2 + (sin(w*(xi)) * w .^ 3 * xgraph.^3) / factorial(3);
  plot(xgraph, fk3);
  hold on;
  fk4 = fk3 + (cos(w*(xi)) * w .^ 4 * xgraph.^4) / factorial(4);
  plot(xgraph, fk4);
  hold on;
  fk5 = fk4 - (sin(w*(xi)) * w .^ 5 * xgraph.^5) / factorial(5);
  plot(xgraph, fk5);
  hold on;
  
endfunction


% d1 = -sin(wx) * w;
% d2 = -cos(wx) * w ^ 2;
% d3 =  sin(wx) * w ^ 3;
% d4 =  cos(wx) * w ^ 4;
% d5 = -sin(wx) * w ^ 5;
