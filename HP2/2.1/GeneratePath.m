function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    
    nCitites = size(visibility, 1);
    
    % Select Random Starting Node
    currentNode = round(rand*(nCitites-1) + 1);
   
    tabuList = [currentNode];
    path = zeros(nCitites, 1);
    path(1) = currentNode;
    
    for iNextNode = 2:nCitites
        nextNode = GetNode(pheromoneLevel, visibility, alpha, beta, tabuList, currentNode);
        path(iNextNode) = nextNode;
        tabuList = [tabuList nextNode];
        currentNode = nextNode;
    end 
end 
