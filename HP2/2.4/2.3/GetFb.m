function [Fb, Tb] = GetFb(Tmax, M, g, Pp, Tamb, Ch, Tau, Tb)

    Tb = GetTb(Tamb, Pp, Ch, Tau, Tb);

    if Tb < Tmax - 100
        Fb = (M*g*Pp)/20;
    else 
        Fb = M*g*Pp*exp(-(Tb-(Tmax - 100)/100));
    end 
end 