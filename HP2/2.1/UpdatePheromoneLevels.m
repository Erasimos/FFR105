 function pheromoneLevel = UpdatePheromoneLevels(pheromoneLevel,deltaPheromoneLevel,rho)
    
    MIN_PHEROMONE_LEVEL = 10^(-15);
    
    nCities = size(pheromoneLevel, 1);
    for i = 1:nCities
        for j = 1:nCities
            pheromoneLevel(i, j) = max((1 - rho)*pheromoneLevel(i, j) + deltaPheromoneLevel(i, j), MIN_PHEROMONE_LEVEL);
        end 
    end 
 end 
