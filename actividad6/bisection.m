function [state, val, iCounter] = bisection(xL, xU, maxI, minE)
x = xL;
iCounter = 0;

while(1==1)

    pValue = x;
    x = (xL + xU) / 2;
    evaluation = fun(x);

    if(evaluation * fun(xU) > 0)
        xU = x;
    elseif(evaluation * fun(xL) > 0)
        xL = x;
    endif

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
