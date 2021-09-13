% This method should plot the polynomial and the iterates obtained
% using NewtonRaphsonStep (if any iterates were generated).

function PlotIterations(polynomialCoefficients, iterationValues)

    xMin = min(iterationValues) - 1;
    xMax = max(iterationValues) + 1;
    plotRange = xMin:0.1:xMax;
    plot(plotRange, polyval(fliplr(polynomialCoefficients), plotRange));
    hold on
    
    for iVal = 1:size(iterationValues, 2)
        xVal = iterationValues(1, iVal);
        yVal = GetPolynomialValue(xVal, polynomialCoefficients);
        plot(xVal, yVal, 'o');
    end 
end 



