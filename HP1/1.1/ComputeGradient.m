% This function should return the gradient of f_p = f + penalty.
% You may hard-code the gradient required for this specific problem.

function gradF = ComputeGradient(x,mu)

    if (x(1)^2 + x(2)^2 -1 <= 0)
        % Without mu
        x1 = 2*x(1) - 2;
        x2 = 4*x(2) - 8;
    else 
        % With mu
        x1 = 2*x(1) - 2 + 4*mu*x(1)^3 + 4*mu*x(1)*x(2)^2 - 4*mu*x(1);
        x2 = 4*x(2) - 8 + 4*mu*x(1)^2*x(2) - 4*mu*x(2) + 4*mu*x(2)^3;
    end 
    
    gradF = [x1, x2];
end 


