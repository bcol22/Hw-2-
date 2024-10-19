%%
% Author name:[Brandon Colligen]
% email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Assignment 2
%Task: Weather Data Analysis
% Date: 10-18-24

% creating file

fileID = fopen('weather_data.txt', 'w');
fprintf(fileID,'Date,Temperature,Humidity,Precipitation\n');
fprintf(fileID,'2024-09-01,25.5,60,0\n');
fprintf(fileID,'2024-09-02,26.0,65,5\n');
fprintf(fileID,'2024-09-03,24.5,70,10\n');
fprintf(fileID,'2024-09-04,23,75,15\n');
fprintf(fileID, '2024-09-05,22.5,80,20\n');
fclose(fileID);


% Read data
data = readcell('weather_data.txt', 'Delimiter',',');
n_d = cell2mat(data(2:end, 2:4)); %converting numbered columns
% seperating numerical data
temperature = n_d(:, 2);
humidity = n_d(:, 3);
precipitation = n_d(:, 3);

% calculate average temp, humidity and total precip
a_t = mean(temperature);
a_h = mean(humidity);
t_p = sum(precipitation);

% print data
fprintf('Average temperature: %.2f\n' , a_t);
fprintf('Average Humidity: %.2f\n', a_h);
fprintf('Total Precipitation: %.2f\n', t_p);

%save stats to a new weather file

fileID = fopen ('weather_summary.txt', 'w');
fprintf(fileID,'Average temperature: %.2f\n' , a_t);
fprintf(fileID,'Average Humidity: %.2f\n', a_h);
fprintf(fileID,'Total Precipitation: %.2f\n', t_p);
fclose(fileID);
