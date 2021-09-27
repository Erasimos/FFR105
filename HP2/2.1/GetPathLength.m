function pathLength = GetPathLength(path,cityLocation)
    pathLength = 0;
    for iNode = 1:(length(path) - 1)
        startingNode = path(iNode);
        destinationNode = path(iNode + 1);
        pathLength = pathLength + GetDistance(startingNode, destinationNode, cityLocation);
    end 
    
    % Add distance back to starting node
    pathLength = pathLength + GetDistance(path(end), path(1), cityLocation);
end 
