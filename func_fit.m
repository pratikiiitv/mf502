clear all;
close all;

% Sinusoid with noise added
fs = 44100;
t = 0:1/fs:1;
f = 440;
x_ = sin(2*pi*f*t);
x = x_ + 0.1*randn(1,length(t));
N = length(x);

% Construct matrix b
k = 20;
b = x_(k:N)';
% Construct matrix A
A = [];
for i = k:N 
    A = [A;x(i:-1:i-k+1)];
end 

% Pseudo Inverse Filter Design
a = A\b; % inv(A'*A)*A'*b

% Moving Average Filter

y(1:k-1) = x(1:k-1);
z(1:k-1) = x(1:k-1);
for i = k:N-k
    y(i) = sum(x(i-k+1:i))/k;
    z(i) = x(i:-1:i-k+1)*a;
end 
% To avoid overshooting max limit of +-1 we can scale the z
z = 0.90*z;
figure;
plot(x_(1:1000)); hold on;
plot(y(1:1000),'g');
plot(z(1:1000),'r');


% Check the sounds of x, x_, y and z
