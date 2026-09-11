%% Laboratory Work 1 - Familiarity with MATLAB and GitHub
% Name: Hasmitha
% Surname: Hariharan Sargunam
% Group: EDIFU-25/1
% Date: 22.08.2026

clc;
clear;
close all;

%% Basic MATLAB Calculations
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

%% Section 1: Code from Figure 1
x = 1:32;
y = x.^2;

figure;
plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-as')
ylabel('F_1 [o-]  |  F_2 [-x-]')

%% Section 2: Complementary Tasks
% 1. Define variable N (last digit of student ID = 3)
N = 3; 

% 2. Vector starting at N+1 (4), ending at N+4 (7), step size 0.5
v = (N + 1) : 0.5 : (N + 4); % Result: [4, 4.5, 5, 5.5, 6, 6.5, 7]

% 3. 3x3 matrix A starting at N (3), incrementing by 1 row by row
A = [N,   N+1, N+2; 
     N+3, N+4, N+5; 
     N+6, N+7, N+8];

% 4. Matrix element selections based on diagrams:
% a) Bottom row, middle element (3rd row, 2nd column)
elem_a = A(3, 2);

% b) Bottom-left 2x2 submatrix (rows 2 to 3, columns 1 to 2)
elem_b = A(2:3, 1:2);

% c) Four corner elements
elem_c = A([1, 3], [1, 3]);

% 5. Concatenate matrix A with vector v
% Selecting 3 elements from v to match the 3 rows of matrix A as a new column
v_col = v(1:3)'; 
A_concatenated = [A, v_col];

disp('Matrix A:')
disp(A)
disp('Concatenated Matrix:')
disp(A_concatenated)
