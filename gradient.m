function [g] = gradient(x)
g1 = 2*x(1)-1;
g2 = 4*x(2)-4;
g=[g1; g2];
end
