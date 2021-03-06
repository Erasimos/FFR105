function pathLength = GetPathLength(path,cityLocation)
    pathLength = 0;
    for iNode = 1:(length(path) - 1)
        startingNode = path(iNode);
        destinationNode = path(iNode + 1);
        pathLength = pathLength + GetDistance(cityLocation(startingNode,:), cityLocation(destinationNode,:));
    end 
    
    % Add distance back to starting node
    pathLength = pathLength + GetDistance(cityLocation(path(end),:), cityLocation(path(1),:));
end 
