function [wIH, wHO] = DecodeChromosome(chromosome, nIn, nHidden, nOut, wMax);
    wIH = zeros(nHidden,(nIn+1));
    wHO = zeros(nOut,(nHidden+1));
    
    % Decode wIH
    for iGene = 1:nHidden*(nIn+1)
        g = chromosome(iGene);
        x = -wMax + 2*wMax*g;
        wIH(iGene) = x;
    end 
    
    % Decode wHO
    for iGene = (1 + nHidden*(nIn+1)):(nHidden*(nIn+1) + nOut*(nHidden+1))
        g = chromosome(iGene);
        x = -wMax + 2*wMax*g;
        wHO(iGene - (nHidden*(nIn+1))) = x;
    end 
end 
