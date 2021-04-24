function retval = max_eignvalue (input1, input2)

endfunction


x ? Input initial value vector of length n
M ? Input n×n matrix
IterationMaximum ? Input maximum number of iterations
ErrorMinimum ? Input minimum relative error
IterationCounter ? 0
WHILE (TRUE)
PreviousValue ? x
x ? M × x / (Euclidean norm of x)
Eigenvalue ? square root of (sum of square of elements of x)
CurrentError ? Euclidean distance between x and PreviousValue
IterationCounter ? IterationCounter + 1
IF (CurrentError <= ErrorMinimum)
RETURN Success, Eigenvalue
ELSE IF (IterationCounter = IterationMaximum)
RETURN Failure
END IF
END WHILE