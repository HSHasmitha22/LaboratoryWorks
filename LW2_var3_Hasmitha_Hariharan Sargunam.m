
%% 1. Vectors
% a) create a vector-column, beginning with -5 and ending with 5, with 0.6 step
a = (-5:0.6:5)';

% b) find a square root of each member (using complex roots for negative numbers)
b = sqrt(a);

% c) display the last member of vector (b)
c = b(end);
disp('Last member of vector b:');
disp(c);

% d) multiply corresponding elements of vectors (a) and (b) then divide result by (c)
d_res = (a .* b) / c;
disp('Result of vector operation:');
disp(d_res);

%% 2. Matrices
% a) create matrix X
X = [2*sqrt(2), log(2);
    2^3,       2*pi;
    3*sqrt(2), exp(2)];

% b) join matrix X with column vector X_col
X_col = [2*sqrt(2); 
    5; 
    2^(-2)];

X_new = [X, X_col];

% c) find the determinant of the new matrix
det_X = det(X_new);
disp('Determinant of the new matrix:');
disp(det_X);

%% 3. Practical Applications
% Data parameters
A_amp = 6;      % Voltage amplitude (V)
f = 7;          % Frequency (Hz)
sigma = 1.2;    % Noise level (V)
U1 = 4;         % Threshold 1 (V)
U2 = 2;         % Threshold 2 (V)

% Time array: initial 0, final 2, step 0.002
t = 0:0.002:2;

% Signal s(t) and noise n
s = A_amp * sin(2 * pi * f * t);
n = sigma * randn(size(t));
signal_noisy = s + n;

% a) select the signal samples that exceed specified voltage threshold U1
selected_samples = signal_noisy(signal_noisy > U1);

% b) filter the signal by replacing values whose absolute value is lower than threshold U2 with zeros
filtered_signal = signal_noisy;
filtered_signal(abs(filtered_signal) < U2) = 0;

% c) determine the number of samples in the unfiltered signal
num_unfiltered = numel(signal_noisy);

% d) determine the number of samples selected in part a)
num_selected = numel(selected_samples);

% e) determine the minimum and maximum voltage values of the filtered signal
min_val = min(filtered_signal);
max_val = max(filtered_signal);

% Display practical results
disp(['c) Total samples in unfiltered signal: ', num2str(num_unfiltered)]);
disp(['d) Samples exceeding U1: ', num2str(num_selected)]);
disp(['e) Filtered signal MIN voltage: ', num2str(min_val), ' V']);
disp(['e) Filtered signal MAX voltage: ', num2str(max_val), ' V']);