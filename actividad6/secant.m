function [state, val, iCounter] = secant (x, pValue, maxI, minE)

iCounter = 0;
while(1==1)

    tValue = x;
    x = x - (fun(x) * (pValue - x)) / (fun(pValue) - fun(x));
    pValue = tValue;

    %cError = abs((x-pValue) / x);
    cError = abs(max((x-pValue), (fun(x) - fun(pValue))));
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
