%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Particle Swarm Optimization (PSO).
% For determining function minima
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
numberOfParticles = 30;
numberOfIterations = 5000;
deltaT = 1;
alpha = 1;
w = 1.4;
wEnd = 0.3;
beta = 0.9;
c1 = 2;
c2 = 2;
xMin = -5;
xMax = 5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialization
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
particlePositions = InitializeParticlePositions(numberOfParticles, xMin, xMax);
particleVelocities = InitializeParticleVelocities(numberOfParticles, xMin, xMax, alpha, deltaT);
particleBestPositions = zeros(numberOfParticles, 2);
particleBestGlobalPosition = zeros(1,2);


%%%%%%%%%%%%%%%%%%%%%%%%%%
% The main swarm loop
%%%%%%%%%%%%%%%%%%%%%%%%%%
for iteration = 1:numberOfIterations    
    % Update best positions
    [particleBestPositions, particleBestGlobalPosition] = UpdateBestPositions(particlePositions, particleBestPositions, particleBestGlobalPosition);
    
    % Update particle velocities
    particleVelocities = UpdateParticleVelocities(particleVelocities, deltaT, c1, c2, w, particlePositions, particleBestPositions, particleBestGlobalPosition);

    
    % Update particle positions
    particlePositions = UpdateParticlePositions(particlePositions, particleVelocities, deltaT);
    
    % Update inertia weight 
    w = max(w*beta, wEnd);
end






