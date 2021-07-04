function [state, val, iCounter] = quadratic (x, pValue, ppValue, maxI, minE)

c = [ppValue; pValue; x];

iCounter = 0;
while(1==1)

    V = fliplr(vander(c));
    Y = [f(ppValue); f(pValue); f(x)];
    C = sem_plu(V,Y);

    c(1) = c(2);
    c(2) = c(3);
    c(3) = (-1 * (C(2))) / (2 * C(3));

    ppValue = pValue;
    pValue = x;
    x = (-1 * (C(2))) / (2 * C(3));
    
    cError = abs((x-pValue) / x);
    iCounter = iCounter + 1;

    if(cError <= minE)
        val = x;
        state = "success";
        return;
    endif

    if(iCounter >= maxI)
        val = x;
        state = "failure";
        return;
    endif

endwhile

endfunction