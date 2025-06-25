clear all;
close all;

r(1) = 20;
epsilon = 0.01;
alpha = .01;
rdif = 1; count = 2;
I = [2 3 5];
V = [1 2 3];
while (rdif > epsilon)
    r(count) = r(count-1) - alpha * (2*sum(I.^2)*r(count-1)-2*sum(V.*I));
    count = count + 1;
    rdif = abs(r(count-1) - r(count-2));
end

 