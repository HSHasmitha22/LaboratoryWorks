%% Laboratory Work 1 
% Name: Hasmitha
% Surname: Hariharan Sargunam
% Group: EDIFU-25/1
% Date: 11.09.2026

clc;
clear;
close all;
a = 5;
b = 3;

sum_result = a + b;
difference = a - b;
product = a * b;
division = a / b;

disp('Basic calculations:')
disp(sum_result)
disp(difference)
disp(product)
disp(division)

x = 1:32;
y = x.^2;

figure;
plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-as')
ylabel('F_1 [o-]  |  F_2 [-x-]')



N = 3; 
v = (N + 1) : 0.5 : (N + 4); % Result: [4, 4.5, 5, 5.5, 6, 6.5, 7]
A = [N,   N+1, N+2; 
     N+3, N+4, N+5; 
     N+6, N+7, N+8];
elem_a = A(3, 2);
elem_b = A(2:3, 1:2);
elem_c = A([1, 3], [1, 3]);
v_col = v(1:3)'; 
A_concatenated = [A, v_col];

disp('Matrix A:')
disp(A)
disp('Concatenated Matrix:')
disp(A_concatenated)
