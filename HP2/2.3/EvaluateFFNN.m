function [Pp, deltaGear] = EvaluateFFNN(v_vmax, a_amx, Tb_Tmax, wIH, wHO)

% Input to hidden layer
inputHiddenLayer = zeros(size(wIH,1),1);

for iNeuron = 1:size(inputHiddenLayer, 1)
    sum = 0;
    sum = sum + wIH(iNeuron, 1)*v_vmax;
    sum = sum + wIH(iNeuron, 2)*a_amx;
    sum = sum + wIH(iNeuron, 3)*Tb_Tmax;
    inputHiddenLayer(iNeuron) = Sigmoid(sum);
end 

% Output from the FFNN
output = zeros(size(wHO,1),1);

for iNeuron = 1:size(output, 1)
    sum = 0;
    for iInput = 1:size(inputHiddenLayer,1)
        sum = sum + wHO(iNeuron, iInput)*inputHiddenLayer(iInput);
    end 
    output(iNeuron) = Sigmoid(sum);
end 

Pp = output(1);
deltaGear = output(2);

end 