function particleVelocities = UpdateParticleVelocities(particleVelocities, deltaT, c1, c2, w, particlePositions, particleBestPositions, particleBestGlobalPosition)
    for iParticle = 1:size(particleVelocities, 1)
        
        particleBestPos = particleBestPositions(iParticle,:);
        oldPos = particlePositions(iParticle,:);
        
        q = rand;
        r = rand;
        oldVX = particleVelocities(iParticle,1);
        newVX = w*oldVX + c1*q*((particleBestPos(1) - oldPos(1))/deltaT) + c2*r*((particleBestGlobalPosition(1) - oldPos(1))/deltaT);
        
        q = rand;
        r = rand;
        oldVY = particleVelocities(iParticle,2);
        newVY = w*oldVY + c1*q*((particleBestPos(2) - oldPos(2))/deltaT) + c2*r*((particleBestGlobalPosition(2) - oldPos(2))/deltaT);
        
        % Update velocity
        particleVelocities(iParticle,:) = [newVX newVY];
    end 
end 