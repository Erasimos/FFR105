function  v = GetVelocity(iSlope, iDataSet, t, gear, Pp)

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Parameters
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    v = 20; % Initial Speed
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

    tCurrent = 0;
   
    while tCurrent < t
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
        
        % Update current time
        tCurrent = tCurrent + deltaT;
        
        % Update velocity
        v = new_v;
        
    end  
    
    traveledDistance
end