function particlePositions = InitializeParticlePositions(numberOfParticles, xMin, xMax)
    
    particlePositions = zeros(numberOfParticles, 2);

    for iParticle = 1:numberOfParticles
        r = rand;
        x = xMin + r*(xMax - xMin);
        r = rand;
        y = xMin + r*(xMax - xMin);
        particlePositions(iParticle,:) = [x y];
    end 
end 