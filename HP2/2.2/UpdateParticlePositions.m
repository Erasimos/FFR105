function particlePositions = UpdateParticlePositions(particlePositions, particleVelocities, deltaT)
    
    % Update position for every particle
    for iParticle = 1:size(particlePositions, 1)
        oldPos = particlePositions(iParticle,:);
        particleVelocity = particleVelocities(iParticle,:);
        newPos = oldPos + particleVelocity * deltaT;
        particlePositions(iParticle,:) = newPos;
    end 
end 