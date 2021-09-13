% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome,numberOfVariables,maximumVariableValue);

    x = zeros(1, numberOfVariables);
    a = maximumVariableValue;
    m = size(chromosome, 2);
    n = numberOfVariables;
    k = m/n;
    
    for i = 1:n
        xVal = 0;
        for j = 1:k
            chromosomeIndex = (i - 1)*k + j;
            xVal = xVal + 2^-j*chromosome(1, chromosomeIndex);            
        end 
        xVal = -a + (2*a/(1-2^-k))*xVal;
        x(i) = xVal;
    end  
end 
