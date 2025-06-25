clear all;
close all;
% Problem Formulation : Objective Function Single Neuron with Linear Activation
A = [1 1;
    -1 -1;
    1   2;
    -2 -3];
b = [1; -1; 1; -1];

% f(w) = w'A'Aw - b'Aw - w'A'b + b'b
[w1,w2] = meshgrid(-2:.2:2,-2:.2:2);
[m,n] = size(w1);
for i=1:m
    for j=1:n
        w = [w1(i,j);w2(i,j)];
        f(i,j) = w'*A'*A*w - b'*A*w - w'*A'*b + b'*b;
        gf =  2*(A'*A*w - A'*b);
        gf1(i,j) = gf(1); gf2(i,j) = gf(2);
    end
end
figure;
contour(w1, w2, f); hold on; grid on;
quiver(w1, w2, gf1, gf2);


% Initialization 
epsilon = 0.001;
step_size = 0.001;
w0 = [-1; 1];
wdiff = 1;
plot(w0(1),w0(2),'+');
% Gradient Descent Loop
while (wdiff > epsilon)
    gradf = 2*(A'*A*w0 - A'*b);
    w00 = w0 - step_size*gradf;
    wdiff = sqrt((w00-w0)'*(w00-w0))
    w0 = w00;
    plot(w0(1),w0(2),'+');
    pause();
end


