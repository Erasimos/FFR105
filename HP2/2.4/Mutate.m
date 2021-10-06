function mutatedChromosome = Mutate(pMut, chromosome, nVariableRegisters, nConstantRegisters)
    mutatedChromosome = chromosome;
    for i = 1:length(chromosome)
        
        p = rand;
        if p <= pMut
            % mutate
            
            switch mod(i, 4)
                case 1
                    % Allowed operand range [1, 4]
                    newVal = 1 + fix(rand*4); 
                case 2
                    % Allowed destination range [1, nVariableRegisters] 
                    newVal = 1 + fix(rand*nVariableRegisters); 
                case 3
                    % Allowed range [1, nVariableRegisters + nConstantRegisters]
                    newVal = 1 + fix(rand*(nVariableRegisters + nConstantRegisters)); 
                case 0
                    % Allowed range [1, nVariableRegisters + nConstantRegisters]
                    newVal = 1 + fix(rand*(nVariableRegisters + nConstantRegisters)); 
            end 
            
            % Update value
            mutatedChromosome(i) = newVal;
        end 
    end 
end 