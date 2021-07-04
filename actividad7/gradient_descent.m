function [state, val, iCounter] = gradient_descent(x, maxI, minE)

iCounter = 0;
while(1==1)
    h = optimalStep(x);
    xh = x - h * evalGradient(x);
    pValue = x;
    x = xh;

    cError = norm(x-pValue);
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
