function [newChromosome1, newChromosome2] = TwoPointCrossover(chromosome1, chromosome2)
    
    nGenes = size(chromosome1, 1)/4;
    
    % Crossover only happens between instructions
    crossOverPoint1 = (1 + fix(rand*nGenes))*4;
    crossOverPoint2 = (1 + fix(rand*nGenes))*4;
    
    newChromosome1 = [chromosome1(1:crossOverPoint1) ...
                        chromosome2((crossOverPoint1+1):crossOverPoint2) ...
                        chromosome1((crossOverPoint2+1):end)];
                    
    newChromosome2 = [chromosome2(1:crossOverPoint1) ...
                        chromosome1((crossOverPoint1+1):crossOverPoint2) ...
                        chromosome2((crossOverPoint2+1):end)]; 
end 
