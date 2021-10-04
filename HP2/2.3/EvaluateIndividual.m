function fitnessValue = EvaluateIndividual(individual)
    

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Parameters
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    nIn = 3;
    nHidden = 4;
    nOut = 2;
    wMax = 5;

    % Decode individual, get weigh matrices
    %[wIH, wHO] = DecodeChromosome(individual, nIn, nHidden, nOut, wMax);
    
    wIH = [2 1 -3 1; 5 -2 1 4; 3 0 1 2];
    wHO = [1 0 -4 3; 4 -2 0 1];
    
    
    iSlope = 1;
    iDataSet = 1;
    v = 20; % Initial Speed
    vMax = 25;
    vMin = 1;
    aMax = 10;
    
    deltaT = 0.01;
    traveledDistance = 0;
    g = 9.81; % m s^2 
    M = 2000; % kg
    Cb = 3000;
    Tb = 500; % Initial Tb value
    Tau = 30;
    Tmax = 750;
    Tamb = 283;
    Ch = 40;
    L = 1000; 
    gear = 7;
    
    timeSteps = 0;
    velocitySum = 0;
    
    while traveledDistance < L
        
        % Break Condition
        if v > vMax || v < vMin || Tb > Tmax
            break
        end 
        
        % current angle
        a = GetSlopeAngle(traveledDistance, iSlope, iDataSet);
        
        % inputs for network
        input1 = v/vMax;
        input2 = a/aMax;
        input3 = Tb/Tmax;
        
        % Get values from the FFNN
        [Pp, deltaGear] = EvaluateFFNN(input1, input2, input3, wIH, wHO);
        
        % Change gears if allowed
        if deltaGear > 0.5
            gear = min(gear + 1, 7);
        else 
            gear = max(gear - 1, 1);
        end 
        
        % Fb
        [Fb, Tb] = GetFb(Tmax, M, g, Pp, Tamb, Ch, Tau, Tb);
        
        % Fg
        Fg = GetFg(traveledDistance, iSlope, iDataSet, M, g);
        
        % Feb
        Feb = GetFeb(gear, Cb);
        
        % Calculate next discrete velocity
        acceleration = (Fg - Fb - Feb)/M;
        new_v = acceleration*deltaT + v;
        
        % Calculate traveled distance by taking average speed times deltaT
        traveledDistance = traveledDistance + ((v + new_v)/2)*deltaT;
        
        % Update velocity sum
        timeSteps = timeSteps + 1;
        velocitySum = velocitySum + (v + new_v)/2;
        
        % Update velocity
        v = new_v;
        
    end  
    
    traveledDistance
    averageSpeed = velocitySum/timeSteps
    fitnessValue = averageSpeed*traveledDistance;
    
end 