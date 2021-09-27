function visibility = GetVisibility(cityLocation)
    nCities = length(cityLocation);
    visibility = zeros(nCities, nCities);
    
    for i = 1:nCities
        for j = 1:nCities
            % Possibly do something about visibility to itself is inf
            euclideanDistance = GetDistance(i, j, cityLocation);
            visibility(i, j) = 1/euclideanDistance; 
        end 
    end 
end 
