function [state, x, iCounter] = mnewton (x, maxI, minE)

iCounter = 0;
while(1==1)

    pValue = x;
    delta = sem_plu(evalJ(x), -fun2(x));
    x = x + delta;

    cError = max(norm((x-pValue)), norm((fun2(x) - fun2(pValue))));
    iCounter = iCounter + 1;

    if(cError <= minE)
        state = "success";
        return;
    endif

    if(iCounter >= maxI)
        state = "failure";
        return;
    endif

endwhile

endfunction 
