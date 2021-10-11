function fitnessList = EvaluatePopulation(population, functionData, registers, nVariableRegisters, operations, cMax)
    fitnessList = zeros(size(population, 2), 1);
    
    for i = 1:size(population, 2)
        chromosome = population(i).Chromosome;
        fitnessVal = EvaluateChromosome(chromosome, functionData, registers, operations, nVariableRegisters, cMax);
        
        fitnessList(i) = fitnessVal;
    end 
end 