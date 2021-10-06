% Linear Genetic Programming for fitting the 
% function g(x) = 
% (a0 + a1x + a2x^2 + ... + apx^p) / (b0 + b1x + b2x^2 + ... + bqx^q)

clear all
clc

% PARAMETERS
M = 10;
N = 10;
operators = ['+' '-' 'x' '/'];
pMut = 0.04;
tournamentSize = 5;
pTour = 0.75;
pCross = 0.2;
nIndividuals = 100;

% Initialization
variableRegisters = zeros(M,1);
constantRegisters = zeros(N,1); % TODO change to something suitable
population = InitializePopulation(nIndividuals);
functionData = LoadfunctionData();

