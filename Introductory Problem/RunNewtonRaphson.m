% This function should run the Newton-Raphson method, making use of the
% other relevant functions (StepNewtonRaphson, DifferentiatePolynomial, and
% GetPolynomialValue). Before returning iterationValues any non-plottable values 
% (e.g. NaN) that can occur if the method fails (e.g. if the input is a
% first-order polynomial) should be removed, so that only values that
% CAN be plotted are returned. Thus, in some cases (again, the case of
% a first-order polynomial is an example) there may be no points to plot.

function iterationValues = NewtonRaphson(polynomialCoefficients, startingPoint, tolerance)

    fPrimePoly = DifferentiatePolynomial(polynomialCoefficients, 1);
    fDoublePrimePoly = DifferentiatePolynomial(polynomialCoefficients, 2);
    iterationValues = [startingPoint];
    
    if isempty(fPrimePoly) || isempty(fDoublePrimePoly)
        fprintf('Error! the degree of the polynomial must be 2 or larger for NewtonRaphson to run');
        iterationValues = [];
        return 
    end 
    
    while true
        
        fPrime = GetPolynomialValue(startingPoint, fPrimePoly);
        fDoublePrime = GetPolynomialValue(startingPoint, fDoublePrimePoly);
        nextPoint = StepNewtonRaphson(startingPoint, fPrime, fDoublePrime);
        
        if isnan(nextPoint)
            iterationValues = [];
            return
        end
        
        if abs(nextPoint - startingPoint) < tolerance
            return
        else
            iterationValues = [iterationValues [nextPoint]];
            startingPoint = nextPoint;
        end 
    end 
end 