function [out] = my_sqrt(z)
x(1) = z/2;
count = 2;
xdif = 1;
epsilon = .01;
while(xdif>epsilon)
    x(count) = .5*(x(count-1)+(z/x(count-1)));
    xdif = abs(x(count) - x(count-1));
    count = count + 1;
end
out = x(end);
