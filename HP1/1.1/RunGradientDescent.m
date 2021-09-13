% This function should run gradient descent until the L2 norm of the
% gradient falls below the specified threshold.

function x = RunGradientDescent(xStart, mu, eta, gradientTolerance)

    gradient = ComputeGradient(xStart, mu);
    
    while norm(gradient) >= gradientTolerance
        xStart = xStart - eta * gradient;
        gradient = ComputeGradient(xStart, mu);
    end 
     
    x = xStart;
    
end 