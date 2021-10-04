%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FFNN with GA for optimization of 
% braking systems
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nIndividuals = 1;
nGenes = 1;
vMax = 0;
aMax = 0;
TMax = 0;
pMut = 0;

deltaT = 0.1; % seconds

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialize Population
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
population = InitializePopulation(nIndividuals, nGenes);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The Main Optimization Loop
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while criteria

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Evaluate Individuals
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    fitness = EvaluateIndividuals(population);
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Generate New Individuals
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
    population = GenerateNewGeneration(population, fitness);
    
end 
