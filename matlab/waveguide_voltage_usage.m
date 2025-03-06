%% Init options and simulation

nia = [100496143, 100493990];
% nia = [100123456];

% Constants
c = 3e8; % m/s

STEP = 0.1e-3; % 0.1 mm steps
SIMUL_LENGTH = 40e-3; % 40 mm simulation

d = linspace(0, SIMUL_LENGTH, 1+SIMUL_LENGTH/STEP); % in m
v_load = waveguide_voltage('unknown', d, nia);
v_sc = waveguide_voltage('short', d, nia);
v_oc = waveguide_voltage('open', d, nia);

plot(d*1e3, v_load, d*1e3, v_sc, d*1e3, v_oc)
grid on;
set(gca, 'XDir','reverse')
xlabel('Distance (mm)')
ylabel('Voltage (normalized)')
title('Voltage measured along loaded waveguide')
legend('Unknown load', 'Short circuit', 'Open circuit')


n = length(v_load); % Obtener la longitud del vector

%% Finding lambda

% We find the indices of the peak values
[~, peak_indices_load] = findpeaks(v_load);

% The difference between these two first maxima is standing wave wavelength
% We know the number of steps, we'll convert to m
lambda_sw = (peak_indices_load(2) - peak_indices_load(1))*STEP; % in m
lambda = lambda_sw * 2; % m
beta = (2*pi)/lambda; % m^-1
f = c/lambda; % Hz

fprintf('Frequency: %.3e Hz\n', f)


%% Finding SWR

vmax_load = max(v_load);
vmin_load = min(v_load);
SWR = vmax_load / vmin_load;

[vmax_sc, vmax_sc_idx] = max(v_sc);
[vmin_sc, vmin_sc_idx] = min(v_sc);
disp(vmin_sc)

l = min_idx_1 - min_idx_sc;
l_mm = (l*40)/400;


theta_rad = pi + 2*beta*l_mm
