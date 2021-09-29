function nextNode = GetNode(pheromoneLevel, visibility, alpha, beta, tabuList, startingNode)
    nCities = size(visibility, 1);
    pStop = rand;  
    pSum = 0; 
    for destinationNode = 1:nCities
        
        if ismember(destinationNode, tabuList) % If destination is in tabu list, skip 
            continue
        end 
        
        p = GetStepProbability(pheromoneLevel, visibility, alpha, beta, tabuList, startingNode, destinationNode);
        % Sum edge probabilities until pStop is reached, 
        % that edge will then be selected as the next move
        pSum = pSum + p; 
        
        if pSum >= pStop
            nextNode = destinationNode;
            return;
        end 
    end 
end 