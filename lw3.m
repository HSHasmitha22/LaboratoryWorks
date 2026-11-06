%% LW3 - Variant 3 - Mandatory task
clear; clc; close all;
x = linspace(0, 200, 300);              
f = 2*exp(-0.02*x).*cos(0.2*x);

figure(1);
plot(x, f, 'g-', 'LineWidth', 10);      
grid on;
axis([min(x) max(x) min(f) max(f)]);    
xlabel('x');
ylabel('f(x)');
title('Damped cosine function');
legend('f(x) = 2e^{-0.02x}cos(0.2x)', 'Location', 'northeastoutside'); 

d  = 0.1;                               
z1 = linspace(-pi + d, -d, 200);        
z2 = linspace( d,  pi - d, 200);       
z  = [z1 NaN z2];                       
g  = cot(z);

figure(2);
plot(z, g, 'b-', 'LineWidth', 1.5);
grid on;
axis([min(z) max(z) min(g) max(g)]);    
xlabel('z');
ylabel('f(z)');
title('Cotangent function');
legend('f(z) = cot(z)', 'Location', 'northeastoutside');


x = 0:pi/50:10*pi;                      
y = sin(x).*cos(x);
z = cos(x);

figure(3);

subplot(2,1,1);
plot3(x, y, z, 'b-', 'LineWidth', 1.2);
grid on;
axis([0 10*pi -0.5 0.5 -1 1]);
xlabel('x');
ylabel('y(x) = sin(x)cos(x)');
zlabel('z(x) = cos(x)');
title('a) 3D plot: y(x) and z(x) versus x');

subplot(2,1,2);
theta = x + (y < 0)*pi;
r     = abs(y);
polarplot(theta, r, 'r-', 'LineWidth', 1.2);
rlim([0 0.5]);                          
title('b) y(x) = sin(x)cos(x) in polar coordinates');