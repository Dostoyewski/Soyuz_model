function [ f ] = tforce( h )
F0 = 821*1000;
k = 320410;
Fmax = 10^6;
if(h >= 100000)
    f = Fmax;
else
    f = F0 + sqrt(k*h);
end
end

