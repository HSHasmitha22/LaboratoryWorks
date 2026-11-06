
clear;
clc;
close all;

x = linspace(-1, 1, 50);
y = linspace(-1, 1, 50);

[X, Y] = meshgrid(x, y);

r = sqrt(X.^2 + Y.^2);

z = exp(r.^2);

figure(1);

surf(X, Y, z);

shading interp;

colormap parula;

view(10, 10);

xlabel('x');
ylabel('y');
zlabel('z');

title('z(r) = e^{r^2}');

grid on;
axis tight;

x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);

[X, Y] = meshgrid(x, y);

z = sin((X.^2 + Y.^2) ./ 20) ...
    .* exp(-(X.^2 + Y.^2));

figure(2);

surf(X, Y, z);

shading interp;

colormap parula;

view(18, 18);

xlabel('x');
ylabel('y');
zlabel('f(x,y)');

title('f(x,y) = sin((x^2+y^2)/20)e^{-(x^2+y^2)}');

grid on;
axis tight;