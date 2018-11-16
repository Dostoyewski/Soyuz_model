function [ angle ] = rangle( v, m, t, F )
t0 = 0;
if(v < 300)
    angle = 0;
    t0 = t;
else
%     angle = (t - 60) * pi / (2*466);
    angle = acos(m*9.81/F);
end
end

