function retval = ej1()

disp("Problema 1:")

t = linspace(-1, 2.5, 5000);
plot(t, arrayfun(@(t) fun(t), t));
grid on;

x = 100;
pValue = 90;

xL = 0;
xU = 100;
maxI = 100;
minE = 10e-8;

disp("bisection")
tic();
[state, val, iCounter] = bisection(xL, xU, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

disp("newton")
tic();
[state, val, iCounter] = newton(x, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

disp("secant")
tic();
[state, val, iCounter] = secant(x, pValue, maxI, minE)
time = toc ();
printf("Time elapsed: %ds", time), disp("")

endfunction
