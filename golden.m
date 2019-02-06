function f = golden(x,dk)
bl = 0;
bu = 100;
theta = 0.000000001;
k = 0.618;
n = 0;
I = bu - bl;
al = bu - k * I;
au = bl + k * I;
temp1 = d1search(x,al,dk);
temp2 = d1search(x,au,dk);
while (abs(I) > theta)
    n=n+1;
    
    if (temp1 <= temp2)
        
        I = au - bl;
        bu = au;
        %bl = bl;
        al = bu - k * I;
        au = al;
        temp2 = temp1;
        temp1 = d1search(x,al,dk);
    else
        bl = al;
        %bu = bu;
        I = bu - bl;
        al = au;
        au = bl + k * I;
        temp1 = temp2;
        temp2 = d1search(x,au,dk);
    end
end
f = al;
end

