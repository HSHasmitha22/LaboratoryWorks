%% VILNIUS TECH
% 4 Laboratory Work - Preparation of 3D Graphics
% Variant 3
% COMPLEMENTARY TASK

clear;
clc;
close all;

%% =========================================================
% GIVEN FUNCTION
% z(x,y) = 1 - (x^2 + y^2)
% =========================================================

x = linspace(-2, 2, 50);
y = linspace(-2, 2, 50);

[X, Y] = meshgrid(x, y);

z = 1 - (X.^2 + Y.^2);


%% =========================================================
% GRAPH 1
% Different colormap name: JET
% =========================================================

figure(1);

surf(X, Y, z);

colormap jet;

shading interp;

xlabel('x');
ylabel('y');
zlabel('z');

title('z = 1 - (x^2 + y^2) - Jet Colormap');

grid on;
axis tight;


%% =========================================================
% GRAPH 2
% Different colormap name: HOT
% =========================================================

figure(2);

surf(X, Y, z);

colormap hot;

shading interp;

xlabel('x');
ylabel('y');
zlabel('z');

title('z = 1 - (x^2 + y^2) - Hot Colormap');

grid on;
axis tight;


%% =========================================================
% GRAPH 3
% Color code: RED
% RGB = [1 0 0]
% =========================================================

figure(3);

surf(X, Y, z, ...
    'FaceColor', [1 0 0]);

xlabel('x');
ylabel('y');
zlabel('z');

title('z = 1 - (x^2 + y^2) - Red Color');

grid on;
axis tight;


%% =========================================================
% GRAPH 4
% Color code: BLUE
% RGB = [0 0 1]
% =========================================================

figure(4);

surf(X, Y, z, ...
    'FaceColor', [0 0 1]);

xlabel('x');
ylabel('y');
zlabel('z');

title('z = 1 - (x^2 + y^2) - Blue Color');

grid on;
axis tight;