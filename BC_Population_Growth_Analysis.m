%%
%Author name:[Brandon Colligen]
%Email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Assignment 2
%Task: Population Growth Analysis
% Date: 10-18-24


clear var 
clc
% creating population row vector
population = [5000, 5200, 5350, 5600, 5800];


% growth rate calculation
growthrate = [ 0, (population(2:end) - population(1:end-1)) ./ population(1:end-1)];

%creating matrix
pop_data = [population; growthrate];
% Print formatted table
fprintf('Year\tPopulation\tGrowth Rate (%%)\n');
for i = 1:length(population)
    fprintf('%d\t%d\t\t%.4f\n' , i, population(i), growthrate(i) * 100);
end