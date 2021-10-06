function registers = ExecuteInstructions(instructions, registers, operations)
    
    operation = operations(instructions(1));
    
    switch operation
        
        case '+'
            destinationRegister = instruction(2);
            arg1 = registers(instruction(3));
            arg2 = registers(instruction(4));
            
            result = arg1 + arg2;
            registers(destinationRegister) = result;
            
            
        case '-'
            destinationRegister = instruction(2);
            arg1 = registers(instruction(3));
            arg2 = registers(instruction(4));
            
            result = arg1 - arg2;
            registers(destinationRegister) = result;
        case '*'
            destinationRegister = instruction(2);
            arg1 = registers(instruction(3));
            arg2 = registers(instruction(4));
            
            result = arg1 * arg2;
            registers(destinationRegister) = result;
        case '/'
            destinationRegister = instruction(2);
            arg1 = registers(instruction(3));
            arg2 = registers(instruction(4));
            
            result = arg1 / arg2;
            registers(destinationRegister) = result;
    end 
end 