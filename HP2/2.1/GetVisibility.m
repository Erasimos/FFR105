function visibility = GetVisibility(cityLocation)
    nCities = length(cityLocation);
    visibility = zeros(nCities, nCities);
    
    for i = 1:nCities
        for j = 1:nCities
            euclideanDistance = GetDistance(cityLocation(i,:), cityLocation(j,:));
            visibility(i, j) = 1/euclideanDistance; 
        end 
    end 
end 
