function fitnessVal = EvaluateChromosome(chromosome, functionData, variableRegisters, constantRegisters)

    errorSum = 0;
    K = size(functionData, 1);
    
    for k = 1:K
        
        % Set variable register 1
        variableRegisters(1) = functionData(k, 1); 
        
        % ExecuteInstructions
        variableRegisters = ExecuteInstructions(chromosome, variableRegisters, constantRegisters);
        errorVal = variableRegisters(1);
        errorSum = errorSum + (errorVal - functionData(k,2))^2;
    end 
    
    e = sqrt(errorSum/K);
    fitnessVal = 1/e;
    
end 