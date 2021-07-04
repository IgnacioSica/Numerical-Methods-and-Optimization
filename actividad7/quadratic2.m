function [state, val, iCounter] = quadratic2 (x, h, pValue, ppValue, maxI, minE)

c = [ppValue; pValue; h];

iCounter = 0;
while(1==1)

    V = fliplr(vander(c));
    x;
    evalGradient(x);
    mf(x .- c(1) * evalGradient(x));
    Y = [mf(x .- c(1) * evalGradient(x)); mf(x .- c(2) * evalGradient(x)); mf(x .- c(3) * evalGradient(x))];
    C = sem_plu(V,Y);

    c(1) = c(2);
    c(2) = c(3);
    c(3) = (-1 * (C(2))) / (2 * C(3));

    if(C(3) == 0)
        val = c(3);
        state = "failure";
        return;
    endif
    
    cError = abs((c(3)-c(2)) / c(3));
    iCounter = iCounter + 1;

    if(cError <= minE)
        val = c(3);
        state = "success";
        return;
    endif

    if(iCounter >= maxI)
        val = c(3);
        state = "failure";
        return;
    endif

endwhile

endfunction