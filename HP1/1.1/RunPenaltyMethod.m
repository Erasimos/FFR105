%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Penalty method for minimizing
%
% (x1-1)^2 + 2(x2-2)^2, s.t.
%
% x1^2 + x2^2 - 1 <= 0.
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The values below are suggestions - you may experiment with
% other values of eta and other (increasing) sequences of the
% µ parameter (muValues).


muValues = [10 20 30 40 50 100 200 300 400 500 1000];
eta = 0.0001;
xStart =  [1,2];
gradientTolerance = 1E-6;

xValues1 = zeros(size(muValues, 1),1);
xValues2 = zeros(size(muValues, 1),1);

for i = 1:length(muValues)
 mu = muValues(i);
 x = RunGradientDescent(xStart,mu,eta,gradientTolerance);
 xValues1(i) = x(1);
 xValues2(i) = x(2);
 sprintf('x(1) = %3f, x(2) = %3f mu = %d',x(1),x(2),mu)
end

%plot(muValues, xValues1, '-o')
plot(muValues, xValues2,'-o')
xlabel('\mu')
ylabel('x_2')
ax = gca;
ax.FontSize = 20;
