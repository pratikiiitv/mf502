clear all;
close all;

[x_1,x_2] = meshgrid(-2:.1:2, -2:.1:2);
z = x_1.^2 + x_2.^2;
dz1 = 2*x_1; dz2 = 2*x_2;
figure;
subplot(2,2,1);
contour(x_1, x_2, z);
subplot(2,2,2);
quiver(x_1, x_2, dz1, dz2);
subplot(2,2,3);
contour(x_1, x_2, z); hold on; grid on;
subplot(2,2,4);
contour(x_1, x_2, z); hold on; grid on; quiver(x_1, x_2, dz1, dz2);