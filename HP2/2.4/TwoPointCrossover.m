function [newChromosome1, newChromosome2] = TwoPointCrossover(chromosome1, chromosome2)
    
    % Must be of the shortest chromosome
    nGenes1 = size(chromosome1, 2)/4;
    nGenes2 = size(chromosome2, 2)/4;
    
    nGenes = min(nGenes1, nGenes2);
    
    % Crossover only happens between instructions
    crossOverPoint1 = fix(1 + rand*(nGenes-1))*4;
    crossOverPoint2 = fix(1 + rand*(nGenes-1))*4;
    
    % Make sure the crossover points are in order
    if crossOverPoint1 > crossOverPoint2
        tmpCrossOverPoint = crossOverPoint2;
        crossOverPoint2 = crossOverPoint1;
        crossOverPoint1 = tmpCrossOverPoint;
    end 
    
    slice11 = chromosome1(1:crossOverPoint1);
    slice12 = chromosome1((crossOverPoint1+1):crossOverPoint2);
    slice13 =  chromosome1((crossOverPoint2+1):end);
    
    slice21 = chromosome2(1:crossOverPoint1);
    slice22 = chromosome2((crossOverPoint1+1):crossOverPoint2);
    slice23 =  chromosome2((crossOverPoint2+1):end);
    
    newChromosome1 = [slice11 slice22 slice13];
    newChromosome2 = [slice21 slice12 slice23];
end 
