function newPopulation = GenerateNewPopulation(population, fitnessList, pTour, tourSize, nVariableRegisters, nConstantRegisters, pCross)
    newPopulation = [];
    
    for i = 1:2:size(population, 2)
        
        % Select two individuals for mating
        iSelectedIndividual1 = TournamentSelection(fitnessList, pTour, tourSize);
        iSelectedIndividual2 = TournamentSelection(fitnessList, pTour, tourSize);
        
        chromosome1 = population(iSelectedIndividual1).Chromosome;
        chromosome2 = population(iSelectedIndividual2).Chromosome;
        
        % Create two new indivuals from Two Point Crossover
        r = rand;
        if r < pCross
            [newChromosome1, newChromosome2] = TwoPointCrossover(chromosome1, chromosome2);
        else
            newChromosome1 = chromosome1;
            newChromosome2 = chromosome2;
        end 
        
        % Apply mutation on the newly created individuals
        newChromosome1 = Mutate(newChromosome1, nVariableRegisters, nConstantRegisters);
        newChromosome2 = Mutate(newChromosome2, nVariableRegisters, nConstantRegisters);
        
        % Create structs of the new individuals
        newIndividual1 = struct('Chromosome', newChromosome1);
        newIndividual2 = struct('Chromosome', newChromosome2);
        
        % Add new individuals to the new generation
        newPopulation = [newPopulation newIndividual1 newIndividual2];
        
    end 
end 

