%% Laboratory Work 1 - Familiarity with MATLAB and GitHub
% Name: Hasmitha
% Surname: Hariharan Sargunam
% Group: EDIFU-25/1
% Date: 22.01.2026

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
% 1. Define variable N (assigned to the last digit of your student ID number, e.g., 5)
N = 5; 

% 2. Vector with first element N+1, final element N+4, step size 0.5
v = (N + 1) : 0.5 : (N + 4);

% 3. 3x3 matrix A starting at N, incrementing by 1 row by row
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
% Vector v has 7 elements; transpose v to a column vector and pair with modified matrix rows/columns
v_col = v(:); % Convert v to a column vector (7x1)
% Resize or select matching elements for concatenation (e.g., adding v as a 4th column to A)
v_mod = v(1:3)'; % Match 3 rows of matrix A
A_concatenated = [A, v_mod];

disp('Matrix A:')
disp(A)
disp('Concatenated Matrix:')
disp(A_concatenated)