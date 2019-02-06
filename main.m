clear;
clc;
k=0;
x=[0;0];
B=[1 0
   0 1];
limit=1e-9;
g = gradient(x);
dk=-B*g;
alpha = golden(x,dk);
f = objectivefunc(x);
while (abs(alpha*norm(dk)) >= limit)
    k=k+1;
    g = gradient(x);
    dk=-B*g;
    alpha = golden(x,dk);
    x = x + alpha*dk;
    f = objectivefunc(x);
    r = [x; f]
    dx = alpha*dk;
    dg = gradient(x) - g;
    B = B + (dx*transpose(dx))/(transpose(dx)*dg) - (B*dg*transpose(B*dg))/(transpose(dg)*B*dg);    
end