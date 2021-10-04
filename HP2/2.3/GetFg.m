function Fg = GetFg(traveledDistance, iSlope, iDataSet, M, g)
    angle = GetSlopeAngle(traveledDistance, iSlope, iDataSet);
    Fg = M*g*sin(angle);
end 