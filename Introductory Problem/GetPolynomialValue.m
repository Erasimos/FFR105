% This function should return the value of the polynomial f(x) = a0x^0 + a1x^1 + a2x^2 ...
% where a0, a1, ... are obtained from polynomialCoefficients.

function value = GetPolynomialValue(x, polynomialCoefficients)

    polynomialValue = 0;
    
    for i = 1:size(polynomialCoefficients, 2)
        coefficient = polynomialCoefficients(1, i);
        tmpVal = coefficient * x^(i-1);
        polynomialValue = polynomialValue + tmpVal;
    end 

    value = polynomialValue; 
end 
