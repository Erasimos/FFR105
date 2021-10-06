% Linear Genetic Programming for fitting the 
% function g(x) = 
% (a0 + a1x + a2x^2 + ... + apx^p) / (b0 + b1x + b2x^2 + ... + bqx^q)

clear all
clc

% PARAMETERS
M = 10; % number of variable registers
N = 10; % number of constant registers
operators = ['+' '-' 'x' '/'];
pMut = 0.04;
tournamentSize = 5;
pTour = 0.75;
pCross = 0.2;
nIndividuals = 100;
minNumberOfGenes = 1;
maxNumberOfGenes = 25;

% Initialization
variableRegisters = zeros(M,1);
constantRegisters = zeros(N,1); % TODO change to something suitable
register = [variableRegisters constantRegisters];% Combine variable and constant registers
population = InitializePopulation(nIndividuals, minNumberOfGenes, maxNumberOfGenes, M, N);
functionData = LoadfunctionData();

