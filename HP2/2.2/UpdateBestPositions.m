function [particleBestPositions, particleBestGlobalPosition] = UpdateBestPositions(particlePositions, particleBestPositions, particleBestGlobalPosition)
   
    numberOfParticles = size(particleBestPositions,1);
    for i = 1:numberOfParticles
        
        pPos = particlePositions(i,:);
        pBestPos = particleBestPositions(i,:);
        
        fValParticle = GetFunctionValue(pPos(1), pPos(2));
        fValParticleBest = GetFunctionValue(pBestPos(1), pBestPos(2));
        fValGlobalBest = GetFunctionValue(particleBestGlobalPosition(1), particleBestGlobalPosition(2));
        
        % Update particle best position
        if fValParticle < fValParticleBest
            particleBestPositions(i,:) = pPos;
        end 
        
        % Update global best position
        if fValParticle < fValGlobalBest
            particleBestGlobalPosition = pPos;
            
            % If global best was updated, print it
            particleBestGlobalPosition
        end 
    end
end 