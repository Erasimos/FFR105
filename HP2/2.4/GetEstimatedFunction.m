function estimatedFunction = GetEstimatedFunction(chromosome, operators)

    registers = ["x" "0" "0" "0" "0" "-1" "3" "-5" "1" "10"];
    
    nInstructions = size(chromosome, 2)/4;
    
    for iInstruction = 0:(nInstructions-1)
        iArg = 1 + (iInstruction*4);
        
        operation = operators(chromosome(iArg));
        destinationRegister = chromosome(iArg+1);
        arg1 = chromosome(iArg+2);
        arg2 = chromosome(iArg+3);
        
        instruction = strcat('(', registers(arg1), ' ', operation, ' ', registers(arg2), ')');
        registers(destinationRegister) = instruction;
         
    end 
    
    % simplify estimated function found in register 1
    estimatedFunction = registers(1);
    estimatedFunction = simplify(str2sym(estimatedFunction));
end 