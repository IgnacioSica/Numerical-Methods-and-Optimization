function [state, val, iCounter] = newton (x, maxI, minE)

iCounter = 0;
while(1==1)

    pValue = x;
    x = x - (df(x) / ddf(x));

    cError = abs((x-pValue) / x);
    %cError = abs(max((x-pValue), (fun(x) - fun(pValue))));
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