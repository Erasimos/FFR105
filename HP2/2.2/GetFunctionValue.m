% Returns the value of the function:
% f(x,y) = (x^2 + y - 11)^2 + (x + y^2 - 7)^2
% at the given x and y value
function fVal = GetFunctionValue(x,y)
    term1 = (x^2 + y - 11)^2;
    term2 = (x + y^2 - 7)^2;
    fVal = term1 + term2;
end 