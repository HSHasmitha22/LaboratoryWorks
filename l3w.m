%% LW3 - Variant 3 - Complementary task: graphical representation of signals
clear; clc; close all;

%% ===== DEMO SIGNALS - delete this block and use your LW2 Task 3 data =====
t   = linspace(0, 1, 500);
u   = 2*sin(2*pi*5*t) + 0.3*randn(size(t));   
u_f = movmean(u, 15);                        
U1  = 1;                                      % threshold 1
U2  = -1;                                     % threshold 2
%% ========================================================================

% ----- calculations -----
mask   = u > U1;                              % samples exceeding U1
[umax] = max(u);   idxMax = find(u == umax);  % every location of the maximum
[umin] = min(u);   idxMin = find(u == umin);  % every location of the minimum

pad = 0.1*(umax - umin);                      % margin for axis limits
ylims = [min([umin, U2]) - pad, max([umax, U1]) + pad];
xlims = [t(1) t(end)];

titleStyle = {'FontWeight','bold','FontSize',13};   % requirement 6

figure('Name','Signals','Position',[100 100 1200 450]);

%% ===== a) original and filtered signals + thresholds =====
subplot(1,2,1);                               % horizontal arrangement
hold on;
h1 = plot(t, u,   '--', 'LineWidth', 1);      % original: dashed, width 1
h2 = plot(t, u_f, '-',  'LineWidth', 1.75);   % filtered: solid, width 1.75
h3 = plot(xlims, [U1 U1], 'b-.', 'LineWidth', 1.5);   % U1: blue dash-dot
h4 = plot(xlims, [U2 U2], 'm:',  'LineWidth', 1.5);   % U2: (style not specified)
hold off;
grid on;
xlim(xlims); ylim(ylims);
xlabel('Time t, s');
ylabel('Voltage U, V');
title('a) Original and filtered signals', titleStyle{:});
legend([h1 h2 h3 h4], {'Original signal','Filtered signal','Threshold U_1','Threshold U_2'}, ...
    'Location','best');

%% ===== b) discrete signal above U1 + max/min markers =====
subplot(1,2,2);
hold on;
hs = stem(t(mask), u(mask), 'filled', 'MarkerSize', 3, 'Color', [0 0.447 0.741]);
hu = plot(xlims, [U1 U1], 'b-.', 'LineWidth', 1.5);   % U1 line, blue dash-dot
hM = plot(t(idxMax), u(idxMax), 's', 'MarkerSize', 8, ...
    'MarkerEdgeColor', [0.5 0 0.5], 'MarkerFaceColor', [0.5 0 0.5]); % max: purple square, size 8
hm = plot(t(idxMin), u(idxMin), 'kv', 'MarkerSize', 8, ...
    'MarkerFaceColor', 'k');                                          % min: black triangle (style not specified)
hold off;
grid on;
xlim(xlims); ylim(ylims);
xlabel('Time t, s');
ylabel('Voltage U, V');
title('b) Samples above U_1 (discrete form)', titleStyle{:});
legend([hs hu hM hm], {'Samples > U_1','Threshold U_1','Maximum voltage','Minimum voltage'}, ...
    'Location','best');