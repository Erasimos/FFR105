function fitnessVal = EvaluateChromosome(chromosome, functionData, registers, operations, nVariableRegisters, cMax)

    errorSum = 0;
    K = size(functionData, 1);
    
    for k = 1:K
        
        % reset variable register 1
        registers(1) = functionData(k, 1); 
        for i = 2:nVariableRegisters
            registers(i) = 0;
        end 
        
        % ExecuteInstructions
        registers = ExecuteInstructions(chromosome, registers, operations);
        errorVal = registers(1);
        errorSum = errorSum + (errorVal - functionData(k,2))^2;
       
    end 
    
    e = sqrt(errorSum/K);
    fitnessVal = 1/e;
    
    % Penalty factor for chromosomes longer than cMax
    if length(chromosome) > cMax
        fitnessVal = fitnessVal*0.7;
    end 
    
end 