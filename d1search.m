function f = d1search(x,alpha,dk)
f = (x(1)+ alpha*dk(1))^2 + 2*(x(2) + alpha*dk(2))^2 - (x(1) + alpha*dk(1)) - 4*(x(2) + alpha*dk(2)) + 5;
end
