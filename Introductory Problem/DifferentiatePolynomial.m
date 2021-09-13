% This method should return the coefficients of the k-th derivative (defined by
% the derivativeOrder) of the polynomial given by the polynomialCoefficients (see also GetPolynomialValue)

function derivativeCoefficients = DifferentiatePolynomial(polynomialCoefficients, derivativeOrder)

    derivativeCoefficients = polynomialCoefficients;

    for i = 1:derivativeOrder
          
        nmbrOfCoefficients = size(derivativeCoefficients, 2);
        
        % Stop derivation and return empty vector
        if nmbrOfCoefficients == 1
            derivativeCoefficients = [];
            return 
        end 
        
        newDerivativeCoefficients = zeros(1, nmbrOfCoefficients - 1);
        
        for j = 2:nmbrOfCoefficients
            newCoefficient = (j - 1) * derivativeCoefficients(1, j);
            newDerivativeCoefficients(1, j - 1) = newCoefficient;
        end 
        
        derivativeCoefficients = newDerivativeCoefficients;  
    end 
end 

