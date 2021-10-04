function [Pp, deltaGear] = EvaluateFFNN(v_vmax, a_amax, Tb_Tmax, wIH, wHO)

% Input to hidden layer
inputHiddenLayer = zeros(size(wIH,1),1);

for iNeuron = 1:size(inputHiddenLayer, 1)
    sum = wIH(iNeuron, 1); % First add bias term
    sum = sum + wIH(iNeuron, 2)*v_vmax;
    sum = sum + wIH(iNeuron, 3)*a_amax;
    sum = sum + wIH(iNeuron, 4)*Tb_Tmax;
    inputHiddenLayer(iNeuron) = Sigmoid(sum);
end 

% Output from the FFNN
output = zeros(size(wHO,1),1);

for iNeuron = 1:size(output, 1)

    sum = wHO(iNeuron, 1); % First add bias term
    
    for iInput = 2:size(inputHiddenLayer,1)
        sum = sum + wHO(iNeuron, iInput)*inputHiddenLayer(iInput);
    end 
    output(iNeuron) = Sigmoid(sum);
end 

Pp = output(1);
deltaGear = output(2);

end 