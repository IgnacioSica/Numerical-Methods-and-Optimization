function retval = ej2()

disp("Problema 2:")

maxI = 100;
minE = 10e-8;

x1 = -1.5;
x2 = 1.5;
xv = [x1;x2];

disp("newton")
tic();
[state, x, iCounter] = mnewton(xv, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

endfunction