function [state, val, iCounter] = golden_mean2(x, xL, xU, pType, maxI, minE)

x0 = 0.6180 * xL + (1 - 0.6180) * xU;
x1 = (1 - 0.6180) * xL + 0.6180 * xU;

iCounter = 0;

while(1==1)

    if(pType = "minimization")
        if(mf(x - x0 * evalGradient(x)) < mf(x - x1 * evalGradient(x)))
            xU = x1;
            x1 = x0;
            x0 = 0.6180 * xL + (1 - 0.6180) * xU;
        elseif
            xL = x0;
            x0 = x1;
            x1 = (1 - 0.6180) * xL + 0.6180 * xU;
        endif
    endif

    cError = abs(xU - xL);
    iCounter = iCounter + 1;

    if(cError <= minE)
        val = x0;
        state = "success";
        return;
    endif

    if(iCounter >= maxI)
        val = x1;
        state = "failure";
        return;
    endif

endwhile

endfunction
