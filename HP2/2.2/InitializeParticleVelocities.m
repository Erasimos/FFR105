function particleVelocities = InitializeParticleVelocities(numberOfParticles, xMin, xMax, alpha, deltaT)

    particleVelocities = zeros(numberOfParticles, 2);
    for iParticle = 1:numberOfParticles
        r = rand;
        vX = (alpha/deltaT)*(-((xMax - xMin)/2)+r*(xMax - xMin));
        r = rand;
        vY = (alpha/deltaT)*(-((xMax - xMin)/2)+r*(xMax - xMin));
        particleVelocities(iParticle,:) = [vX, vY];
    end 
end 