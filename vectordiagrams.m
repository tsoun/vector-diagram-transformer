clc;
clear;
close all;
figure()
V_2 = plotVector(219.61, 0, [0 0], 'Voltage', 'V_2');
I_2 = plotVector(13.64, -45.96, [0 0], 'Current', 'I_2');
E_1 = plotVector(224.93, -0.25, [0 0], 'Voltage', 'E_1');
I_0 = plotVector(0.9664, -59.85, [0 0], 'Current', 'I_0');
I_1 = plotVector(14.58, -46.87, [0 0], 'Current', 'I_1');
V_1 = plotVector(230.33, -0.45, [0 0], 'Voltage', 'V_1');
I_1R_1 = plotVector(4.3011, -46.87, E_1.Head, 'Voltage', 'I_1*R_1');
I_1X_s1 = plotVector(3.370896, 43.13, I_1R_1.Head, 'Voltage', 'I_1*X_{\sigma1}');
I_2R_2 = plotVector(4.39208, -45.96, V_2.Head, 'Voltage', 'I_2*R_2');
I_2X_s2 = plotVector(3.153568, 44.04, I_2R_2.Head, 'Voltage', 'I_2*X_{\sigma2}');
I_Fe = plotVector(0.4891, E_1.Angle, [0 0], 'Current', 'I_{Fe}');
I_Fe = plotVector(0.8335, I_Fe.Angle-90, [0 0], 'Current', 'I_u');

title('Vector diagram');
subtitle('Simulink - Ohmic-Inductive Load');

function arrow = plotVector(length, angle, tail, type, name)
    arrow = vector;
    arrow.Angle = -angle;
    arrow.Length = length;
    arrow.Type = type;
    arrow.Tail = tail;
    arrow.Head = arrow.setHead();
    arrow.Name = name;
    arrow.vplot();
end