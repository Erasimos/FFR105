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
numberOfIterations = 500;
numberOfRuns = 50;
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
% Outer loop for multiple runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% best position for every run, used for plotting
globalBestPositionsCollection = [];

for run = 1:numberOfRuns
    
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
    
    % add gloabl best to global best collection, only add if it is not
    % already in the collection
    minimaAlreadyeFound = false;
    for i = 1:size(globalBestPositionsCollection, 1)
        foundPos = globalBestPositionsCollection(i,:);
        if GetDistance(foundPos, particleBestGlobalPosition) < 0.000001
            minimaAlreadyeFound = true;
        end
    end 
    if not (minimaAlreadyeFound)
        globalBestPositionsCollection = [globalBestPositionsCollection; particleBestGlobalPosition];
    end 
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot contour of log(a + f(x, y), where a = 0.01)
figure
f = @(x,y) log(0.01 + (x^2 + y - 11)^2 + (x + y^2 - 7)^2); 
fcontour(f)

% Plot contour of f(x, y) and with found minima
figure
hold on
f = @(x,y) (x^2 + y - 11)^2 + (x + y^2 - 7)^2; 
fcontour(f)

% Plot found minima
xValues = globalBestPositionsCollection(:,1);
yValues = globalBestPositionsCollection(:,2);
plot(xValues, yValues, 'o')

clc;

% Print found minima
globalBestPositionsCollection

% Print corresponding function values
globalBestFunctionValues = zeros(size(globalBestPositionsCollection,1),1);
for i = 1:size(globalBestPositionsCollection,1)
    globalBestFunctionValues(i) = GetFunctionValue(globalBestPositionsCollection(i,1), globalBestPositionsCollection(i,2));
end 
globalBestFunctionValues








