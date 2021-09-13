% This method should perform a single step of the Newton-Raphson method.
% Note: In cases where the step cannot be completed, e.g. if f" = 0, a
% clear error message should be given.

function xNext = NewtonRaphsonStep(x, fPrime, fDoublePrime)

    if fDoublePrime == 0
        fprintf('Error division by zero! fDoublePrime equal to zero');
        xNext = NaN;
        return
    end 

    xNext = x - (fPrime/fDoublePrime);
end 