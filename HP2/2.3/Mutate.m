function individual = Mutate(individual, pMut)
    nGenes = size(individual);
    
    for iGene = 1:nGenes
        r = rand;
        
        if r <= pMut
            individual(iGene) = rand;
        end 
    end 
end 