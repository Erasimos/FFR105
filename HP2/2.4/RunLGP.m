
clear all
clc

nBatches = 500;
bestFitness = 0;
bestIndividual = struct('Chromosome', []);
bestError = 0;

for i = 1:nBatches
    
    % Print current batch
    batch = i
    
    [fitnessVal, individual] = RunLGPSingle();
    
    % Update best fitness
    if fitnessVal > bestFitness
        bestFitness = fitnessVal
        bestIndividual = individual;
        bestError = 1/fitnessVal
    end 
    
    % stop if the desired aquaracy hs been found
    if bestError < 0.01
        break
    end 
    
end

bestChromosome = bestIndividual.Chromosome;

% Add best chromosome to "BestChromosome.m"
save('bestChromosome.mat', 'bestChromosome');