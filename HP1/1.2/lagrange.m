x1 = -(-7*sqrt(336/37))/4;
x2 = -sqrt(336/37);

lx1 = -x1;
lx2 = -x2;
lambda = -2/(2*lx1 + lx2);

fVal = 15 + 2*(x1) + 3*x2

fprimeX1 = 2 + 2*lambda*x1 + lambda*x2
fprimeX2 = 3 + lambda*x1 + 2*lambda*x2
fprimeL = x1^2+x1*x2+x2^2-21