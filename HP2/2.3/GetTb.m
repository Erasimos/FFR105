function Tb = GetTb(Tamb, Pp, Ch, Tau, Tb)

   
    % deltaTb from previous time step
    deltaTb = Tb - Tamb;

    % deltaTb for new time step
    if Pp < 0.01
        deltaTb = deltaTb - deltaTb/Tau;
    else 
        deltaTb = deltaTb + Ch*Pp;
    end 
    
    % Tb for new time step
    Tb = Tamb + deltaTb;
end 