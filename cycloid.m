clear
clc
r = 2;
thetaMax = 6 * pi;
thetaRange = linspace(0, thetaMax, 101);

figure(1)
for i = 1 : length(thetaRange)
    Theta = thetaRange(i);
    
    theta = linspace(0, Theta, 101);
    x = r * (theta - sin(theta));
    y = r * (1 - cos(theta));
    
    angle = linspace(0, 2 * pi, 101);
    aa = r * Theta + r * cos(angle);
    bb = r + r * sin(angle);
    
    rRange = linspace(0, r, 101);
    cc = r * Theta - rRange * sin(Theta);
    dd = r - rRange * cos(Theta);
    
    plot(x, y, 'r', 'linewidth', 2)
    hold on
    plot(aa, bb, 'k', 'linewidth', 2)
    hold on
    plot(cc, dd, 'k', 'linewidth', 2)
    hold off
    axis equal
    axis([0 thetaMax * r 0 2 * r])
    pause(0.1)
end