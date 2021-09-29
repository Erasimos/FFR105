function p = GetStepProbability(pheromoneLevel, visibility, alpha, beta, tabuList, startingNode, destinationNode)
    nCities = size(visibility, 1);
    
    nom = (pheromoneLevel(startingNode, destinationNode)^alpha) * (visibility(startingNode, destinationNode)^beta);
    denom = 0;
    for l = 1:nCities
        if not(ismember(l, tabuList))
            denom = denom + (pheromoneLevel(startingNode, l)^alpha)*(visibility(startingNode, l)^beta);
        end 
    end 
    p = nom/denom;
end 