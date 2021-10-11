clc 
clf
clear all

load('BestChromosome.mat', 'bestChromosome');
M = 5;
cMax = 4*200;
variableRegisters = zeros(1, M);
constantRegisters = [-1 3 -5 1 10];
operators = ['+' '-' '*' '/'];
functionData = LoadFunctionData;
registers = [variableRegisters constantRegisters];
estimatedFunctionValues = zeros(size(functionData, 1), 1);

estimatedFunction = GetEstimatedFunction(bestChromosome, operators);

% Calculate estimated function value for every data point
for k = 1:size(functionData, 1)
    
    % reset variable register 1
    registers(1) = functionData(k, 1); 
    for i = 2:M
        registers(i) = 0;
    end
    
    registers = ExecuteInstructions(bestChromosome, registers, operators);
    estimatedFunctionValue = registers(1);
    estimatedFunctionValues(k) = estimatedFunctionValue;
end 

fitness = EvaluateChromosome(bestChromosome, functionData, registers, operators, length(variableRegisters), cMax);
error = 1/fitness;

fprintf('Error = %d \n', error);

estimatedFunction

plot(functionData(:,1), functionData(:,2))
xlabel('$$x$$', 'Interpreter', 'Latex')
ylabel('$$y_{k}$$', 'Interpreter', 'Latex')
set(gca, 'FontSize', 15)

figure
plot(functionData(:,1), estimatedFunctionValues(:))
xlabel('$$x$$', 'Interpreter', 'Latex')
ylabel('$$\hat{y_{k}}$$', 'Interpreter', 'Latex')
set(gca, 'FontSize', 15)


        