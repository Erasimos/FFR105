function fitness = EvaluateIndividuals(population)

    fitness = zeros(size(population, 1),1);

    for iIndividual = 1:size(population, 1)
        individual = population(iIndividual,:);
        individualFitness = EvaluateIndividual(individual);
        fitness(iIndividual) = individualFitness;
    end 
end 