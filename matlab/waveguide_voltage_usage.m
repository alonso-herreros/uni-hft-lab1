nia = [100123456, 100654321];
% nia = [100123456];

d = linspace(0, 40e-3, 100001);
v_load = waveguide_voltage('unknown', d, nia);
v_sc = waveguide_voltage('short', d, nia);
v_oc = waveguide_voltage('open', d, nia);

plot(d*1e3, v_load, d*1e3, v_sc, d*1e3, v_oc)
set(gca, 'XDir','reverse')
xlabel('Distance (mm)')
ylabel('Voltage (normalized)')
title('Voltage measured along loaded waveguide')
legend('Unknown load', 'Short circuit', 'Open circuit')