function [bestFitness, bestIndividual] = RunLGPSingle()

    % Linear Genetic Programming for fitting the 
    % function g(x) = 
    % (a0 + a1x + a2x^2 + ... + apx^p) / (b0 + b1x + b2x^2 + ... + bqx^q)

    % PARAMETERS
    M = 5; % number of variable registers
    operators = ['+' '-' '*' '/'];
    pTour = 0.75;
    tourSize = 5;
    pCross = 0.35;
    nIndividuals = 100;
    minNumberOfInstructions = 10;
    maxNumberOfInstructions = 100;
    nGenerations = 20000; % number of generations to be run
    cMax = 4*200;

    % Initialization
    bestFitness = 0;
    bestIndividual = struct('Chromosome', []); 
    variableRegisters = zeros(1, M);
    constantRegisters = [-1 3 -5 1 10];
    N = length(constantRegisters); % number of constant registers
    registers = [variableRegisters constantRegisters];% Combine variable and constant registers
    population = InitializePopulation(nIndividuals, minNumberOfInstructions, maxNumberOfInstructions, M, N);
    functionData = LoadFunctionData;

    for generation = 1:nGenerations

        % Elite individual for this generation
        eliteFitness = 0;
        eliteIndividual = struct('Chromosome', []);

        % Evalute current generation
        fitnessList = EvaluatePopulation(population, functionData, registers, M, operators, cMax);

        % Update best individual and elite individual
        for i = 1:nIndividuals
            fitnessVal = fitnessList(i);

            if fitnessVal > eliteFitness
                eliteFitness = fitnessVal;
                eliteIndividual = population(i);
            end 

            if fitnessVal > bestFitness
                bestFitness = fitnessVal;
                bestIndividual = population(i);
            end 
        end 

        % Generate new generation
        population = GenerateNewPopulation(population, fitnessList, pTour, tourSize, M, N, pCross);

        % Replace first individual with the best from current generation
        population(1) = eliteIndividual;
    end 
end 

