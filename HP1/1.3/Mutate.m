function mutatedIndividual = Mutate(individual, mutationProbability);
    mutatedIndividual = individual;
    for i = 1:size(individual, 2)
        r = rand;
        if r < mutationProbability
            mutatedIndividual(i) = 1 - individual(i);
        end 
    end 
end 