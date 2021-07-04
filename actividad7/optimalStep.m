function h = optimalStep(x)

h = 0.3;
pValue = 0.5;
ppValue = 0.7;
maxI = 50;
minE = 10e-8;
[state, val, iCounter] = golden_mean2(x,0,1,"minimization",maxI, minE);
h = val;

endfunction 