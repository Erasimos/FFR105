function pheromoneLevel = InitializePheromoneLevels(numberOfCities, tau0)
    pheromoneLevel = ones(numberOfCities, numberOfCities) * tau0;
end 
