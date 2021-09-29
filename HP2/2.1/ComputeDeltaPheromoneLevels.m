function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)
    nAnts = size(pathCollection, 1);    
    nCities = size(pathCollection, 2);
    
    deltaPheromoneLevel = zeros(nCities, nCities);

    % Sum delta pheromones for each ant, one ant at a time
    for k = 1:nAnts
        path = pathCollection(k,:);
        pathLength = pathLengthCollection(k);
        
        for iNode = 1:(length(path) -1)
            i = path(iNode);
            j = path(iNode + 1);
            deltaPheromoneLevel(i, j) = deltaPheromoneLevel(i, j) + (1/pathLength);
        end 
        
        % Add pheromone for the edge going from the end back to the start
        i = path(end);
        j = path(1);
        deltaPheromoneLevel(i, j) = deltaPheromoneLevel(i, j) + (1/pathLength);
    end 
end 
