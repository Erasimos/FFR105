function population = InitializePopulation(populationSize, minNumberOfGenes, maxNumberOfGenes, nVariableRegisters, nConstantRegisters)

    population = [];
    for i = 1:populationSize
        
        nGenes = minNumberOfGenes + fix(rand*(maxNumberOfGenes - minNumberOfGenes));
        chromosome = zeros(nGenes*4, 1);
        
        for j = 1:nGenes
            % Genes will always have four numbers
            iGene = 1 + (j-1)*4;
            
             % Allowed range for operand [1,4]
            chromosome(iGene) = 1 + fix(rand*4);
            
            % Allowed range for destination register [1,nVariableRegisters]
            chromosome(iGene+1) = 1 + fix(rand*nVariableRegisters); 
            
            % Allowed range for arg1 [1,nVariableRegisters + nConstantRegisters]
            chromosome(iGene+2) = 1 + fix(rand*(nVariableRegisters + nConstantRegisters)); 
            
            % Allowed range for arg2 [1,nVariableRegisters + nConstantRegisters]
            chromosome(iGene+3) = 1 + fix(rand*(nVariableRegisters + nConstantRegisters)); 
        end 
        
        individual = struct('Chromosome', chromosome);
        population = [population individual];
    end 
end