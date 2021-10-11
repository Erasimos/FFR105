function chromosome = EncodeNetwork(wIH, wHO, wMax)
    numberOfwIHGenes = size(wIH, 1)*size(wIH, 2);
    numberOfwHOGenes = size(wHO, 1)*size(wHO, 2);
    
    wIHGenes = zeros(1, numberOfwIHGenes);
    wHOGenes = zeros(1, numberOfwHOGenes);
    
    % Encode wIH genes
    for iGene = 1:numberOfwIHGenes
        x = wIH(iGene);
        g = (x + wMax)/(2*wMax);
        wIHGenes(iGene) = g;
    end 
    
    % Encode wHO genes
    for iGene = 1:numberOfwHOGenes
        x = wHO(iGene);
        g = (x + wMax)/(2*wMax);
        wHOGenes(iGene) = g;
    end 
    
    chromosome = [wIHGenes wHOGenes];
    
end 