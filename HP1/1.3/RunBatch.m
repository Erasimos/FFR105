%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numberOfRuns = 100;                % Do NOT change
populationSize = 100;              % Do NOT change
maximumVariableValue = 5;          % Do NOT change (x_i in [-a,a], where a = maximumVariableValue)
numberOfGenes = 50;                % Do NOT change
numberOfVariables = 2;		   % Do NOT change
numberOfGenerations = 300;         % Do NOT change
tournamentSize = 2;                % Do NOT change
tournamentProbability = 0.75;      % Do NOT change
crossoverProbability = 0.8;        % Do NOT change


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Batch runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define more runs here (pMut < 0.02) ...
mutationProbability = 0;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList0 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList0(i,1) = maximumFitness;
end

mutationProbability = 0.01;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList001 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList001(i,1) = maximumFitness;
end

mutationProbability = 0.02;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList002 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList002(i,1) = maximumFitness;
end

% ... and here (pMut > 0.02)

mutationProbability = 0.05;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList005 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList005(i,1) = maximumFitness;
end

mutationProbability = 0.1;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList01 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList01(i,1) = maximumFitness;
end

mutationProbability = 0.15;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList015 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList015(i,1) = maximumFitness;
end

mutationProbability = 0.3;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList03 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList03(i,1) = maximumFitness;
end

mutationProbability = 0.5;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList05 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList05(i,1) = maximumFitness;
end

mutationProbability = 0.75;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList075 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList075(i,1) = maximumFitness;
end

mutationProbability = 1;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList1 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList1(i,1) = maximumFitness;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Summary of results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Add more results summaries here (pMut < 0.02) ...

average0 = mean(maximumFitnessList0);
median0 = median(maximumFitnessList0);
std0 = sqrt(var(maximumFitnessList0));
sprintf('PMut = 0: Median: %0.10f, Average: %0.10f, STD: %0.10f', median0, average0, std0)

average001 = mean(maximumFitnessList001);
median001= median(maximumFitnessList001);
std001 = sqrt(var(maximumFitnessList001));
sprintf('PMut = 0.01: Median: %0.10f, Average: %0.10f, STD: %0.10f', median001, average001, std001)

average002 = mean(maximumFitnessList002);
median002 = median(maximumFitnessList002);
std002 = sqrt(var(maximumFitnessList002));
sprintf('PMut = 0.02: Median: %0.10f, Average: %0.10f, STD: %0.10f', median002, average002, std002)

% ... and here (pMut > 0.02)

average005 = mean(maximumFitnessList005);
median005 = median(maximumFitnessList005);
std005 = sqrt(var(maximumFitnessList005));
sprintf('PMut = 0.05: Median: %0.10f, Average: %0.10f, STD: %0.10f', median005, average005, std005)

average01 = mean(maximumFitnessList01);
median01 = median(maximumFitnessList01);
std01 = sqrt(var(maximumFitnessList01));
sprintf('PMut = 0.1: Median: %0.10f, Average: %0.10f, STD: %0.10f', median01, average01, std01)

average015 = mean(maximumFitnessList015);
median015 = median(maximumFitnessList015);
std015 = sqrt(var(maximumFitnessList015));
sprintf('PMut = 0.15: Median: %0.10f, Average: %0.10f, STD: %0.10f', median015, average015, std015)

average03 = mean(maximumFitnessList03);
median03 = median(maximumFitnessList03);
std03 = sqrt(var(maximumFitnessList03));
sprintf('PMut = 0.3: Median: %0.10f, Average: %0.10f, STD: %0.10f', median03, average03, std03)

average05 = mean(maximumFitnessList05);
median05 = median(maximumFitnessList05);
std05 = sqrt(var(maximumFitnessList05));
sprintf('PMut = 0.5: Median: %0.10f, Average: %0.10f, STD: %0.10f', median05, average05, std05)

average075 = mean(maximumFitnessList075);
median075 = median(maximumFitnessList075);
std075 = sqrt(var(maximumFitnessList075));
sprintf('PMut = 0.75: Median: %0.10f, Average: %0.10f, STD: %0.10f', median075, average075, std075)

average1 = mean(maximumFitnessList1);
median1 = median(maximumFitnessList1);
std1 = sqrt(var(maximumFitnessList1));
sprintf('PMut = 1: Median: %0.10f, Average: %0.10f, STD: %0.10f', median1, average1, std1)

% Plot median fitness as a function of pMut
pMutValues = [0 0.01 0.02 0.05 0.1 0.15 0.3 0.5 0.75 1];
medians = [median0 median001 median002 median005 median01 median015 median03 median05 median075 median1];
plot(pMutValues, medians, '-o');
xlabel('pMut')
ylabel('median fitness')
set(gca, 'YScale', 'log')
