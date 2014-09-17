clear
clc

R = 3;
r = 1;
d = 0.5;

angle1 = linspace(0, 2 * pi, 1001);
aa = R * cos(angle1);
bb = R * sin(angle1);
figure(1)


thetaRange = linspace(0, 10 * pi, 31);
for i = 1 : length(thetaRange)
    Theta = thetaRange(i);
    theta = linspace(0, Theta, 10001);
    x = (R + r) * cos(theta) - d * cos((R + r) / r * theta);
    y = (R + r) * sin(theta) - d * sin((R + r) / r * theta);
    
    angle2 = linspace(0, 2 * pi, 1001);
    cc = (R + r) * cos(Theta) + r * cos(angle2);
    dd = (R + r) * sin(Theta) + r * sin(angle2);
    
    dRange = linspace(0, d, 1001);
    ee = (R + r) * cos(Theta) - dRange * cos((R + r) / r * Theta);;
    ff = (R + r) * sin(Theta) - dRange * sin((R + r) / r * Theta);
    
    plot(aa, bb, 'b', 'linewidth', 2)
    hold on
    plot(cc, dd, 'k', 'linewidth', 2)
    hold on
    plot(ee, ff, 'k', 'linewidth', 2)
    hold on
    plot(x, y, 'r', 'linewidth', 2)
    hold off
    axis equal
    grid on
%     axis([-8 8 -8 8])
    pause(0.1)
end

hold off