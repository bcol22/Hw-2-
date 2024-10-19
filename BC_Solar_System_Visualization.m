%%
% Author name:[Brandon Colligen]
% email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Assignment 2
%Task: Solar System Visualization
% Date: 10-18-24
clf; %clear figure
clear var 
clc
% planet distance based off earth being 1
p_d = [0.39, 0.72, 1, 1.52, 5.2, 9.58, 19.22, 30.05];
% size of planets relitive to Earth
p_s = [0.38, 0.95, 1, 0.53, 11.21, 9.45, 4.01, 3.88];

% Planet names
p_n = {'Mercury', 'Venus','Earth', 'Mars', 'Jupiter','Saturn', 'Uranus', 'Neptune'};
% Create a plot
figure;

% Scatter plot of planet distances vs. planet sizes
subplot(1,2,1);
scatter(p_d, p_s, 100.* p_s, 'filled');
title('Planet Distances vs Sizes');
xlabel('Distance from Sun (AU)');
ylabel('Planet size relative to Earth');
grid on;
legend(p_n, 'Location','Northwest');


% Creating bar chart of planet distances
subplot(1,2,2);
bar(p_d);
title('Distance from Planets to Sun');
xlabel('Planet');
ylabel('Distance from Sun in Atmospheric Units');
set(gca, 'XTickLabel', p_n, 'XTick', 1:numel(p_n));
grid on;
%save figure
saveas(gcf, 's_s_visualization.png');