fun = @(x) 3*x^2 * sin(x) * e^(-2*x);
dfun = @(x) 6*x*sin(x)*e^(-2*x) + 3*x^2*cos(x)*e^(-2*x) - 6*x^2*sin(x)*e^(-2*x);

set(gca, "linewidth", 1.5, "fontsize", 32)
xlabel ("h", "fontsize", 60);
ylabel ("Relative Error", "fontsize", 60);

grid on;
hold on;

value = dfun(0.5)

h = linspace(0.00001, 0.001, 1000);

errBac = @(s) (der_backward(fun, 0.5, s) - value) / value;
semilogy(h, arrayfun(@(h) errBac(h), h));

errCen = @(s) (der_cent(fun, 0.5, s) - value) / value;
semilogy(h, arrayfun(@(h) errCen(h), h));

errCmp = @(s) (der_cmplx(fun, 0.5, s) - value) / value;
semilogy(h, arrayfun(@(h) errCmp(h), h));

errFor = @(s) (der_forward(fun, 0.5, s) - value) / value;
semilogy(h, arrayfun(@(h) errFor(h), h));

legend("Backward", "Cent", "Cmplx", "Forward", "location", "northwest");

t = linspace(0, 3.5, 350);
#plot(t, arrayfun(@(t) fun(t), t));
#plot(t, arrayfun(@(t) dfun(t), t));

h = 0.05;
for i = h
    #plot(t, arrayfun(@(t) der_backward(fun, t, i), t));
    #plot(t, arrayfun(@(t) der_cent(fun, t, i), t));
    #plot(t, arrayfun(@(t) der_cmplx(fun, t, i), t));
    #plot(t, arrayfun(@(t) der_forward(fun, t, i), t));

   # bacAprox = der_backward(fun, 0.5, i)
   # bacError = (bacAprox - value) / value
   # cenAprox = der_cent(fun, 0.5, i)
   # cenError = (cenAprox - value) / value
   # cmpAprox = der_cmplx(fun, 0.5, i)
   # cmpError = (cmpAprox - value) / value
   # forAprox = der_forward(fun, 0.5, i)
   # forError = (forAprox - value) / value
endfor
