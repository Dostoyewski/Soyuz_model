function [ g ] = gh( h )
    G = 6.674 * 10^-11;
    M = 5.97 * 10^24;
    R = 6356863;
    g = G * M / (R + h)^2;
end

