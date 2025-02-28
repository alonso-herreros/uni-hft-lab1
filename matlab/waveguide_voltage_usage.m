nia = [100496143, 100493990];
% nia = [100123456];

d = linspace(0, 40e-3, 401);
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

max_val = max(v_load);
min_val = min(v_load);

n = length(v_load); % Obtener la longitud del vector
v_load_half = v_load(floor(n/2):length(v_load)); % Tomar desde el índice 1 hasta la mitad
[max_val_2, max_idx_1] = max(v_load);
[max_val_1, max_idx_2] = max(v_load_half);
max_idx_2 = max_idx_2 + floor(n/2);
d = max_idx_2 - max_idx_1

d_mm = (d*40)/400
lambda_mm = d_mm * 2
SWR = max_val / min_val

[min_val_sc, max_idx_sc] = max(v_sc);
max_idx_sc

l = min_idx_1 - min_idx_sc;
l_mm = (l*40)/400;

beta = (2*pi)/lambda_mm;

theta_rad = pi + 2*beta*l_mm
