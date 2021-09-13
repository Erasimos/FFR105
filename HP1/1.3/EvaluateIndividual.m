% First compute the function value, then compute the fitness
% value; see also the problem formulation.

function fitness = EvaluateIndividual(x);
    term1 = (1.5 - x(1) + x(1)*x(2))^2; % (1.5 - x1 + x1*x2)^2
    term2 = (2.25 - x(1) + x(1)*x(2)^2)^2;% (2.25 - x1 + x1*x2^2)^2
    term3 = (2.625 - x(1) + x(1)*x(2)^3)^2;% (2.625 - x1 + x1*x2^3)^2
    functionVal = term1 + term2 + term3;
    fitness = 1/functionVal;
end 