function registers = ExecuteInstructions(instructions, registers, operations)

    nInstructions = size(instructions, 2)/4;

    for iInstr = 0:(nInstructions-1)
        iArg = 1 + iInstr*4;
        
        operation = operations(instructions(iArg));
        destinationRegister = instructions(iArg+1);
        arg1 = registers(instructions(iArg+2));
        arg2 = registers(instructions(iArg+3));
        result = registers(destinationRegister);
        
        switch operation

            case '+'
                result = arg1 + arg2;
            case '-'
                result = arg1 - arg2;
            case '*'
                result = arg1 * arg2;
            case '/'
                if arg2 == 0
                    result = 10^10;
                else 
                    result = arg1 / arg2;
                end 
        end  
        registers(destinationRegister) = result;
    end 
end 