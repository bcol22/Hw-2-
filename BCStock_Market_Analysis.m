%Author name:[Brandon Colligen]
%Email: collig33@students.rowan.edu
%Course: Matlab Programing - Fall 2024
%Assignment : Assignment 2
%Task: Stock Market Analysis
% Date: 10-18-24

clear var %clearing data
clc
clf
closingprices = [100.40,102.55,105.60,104.70,100.77,101.80,100.20,103.90,100.10,100.50,106.90,110.70,115.70,120.60,135.00,138.90,145.20,146.00,151.00,165.50,170.82,180.20,182.60,190.60,186.78,176.80,170.01,170.56,170.50,170.80];
fileID = fopen('stock_data.txt','w');




% writing the closing prices to file

for i = 1:length(closingprices)
    fprintf(fileID, '%.2\n', closingprices(i));
end
fclose(fileID);
%read matrix of listed stock prices
s_p = readmatrix('stock_data.txt');
disp(s_p);



%calculate stats from s_p 
% not calculating these correctly?!

a_p = mean(s_p);
h_p = max(s_p);
l_p = min(s_p);
p_i = sum(diff(s_p) > 0); %tally number of days with price increse




%show stats
fprintf('Average Closing Price: %.2f\n', a_p);
fprintf('Highest Closing Price: %.2f\n' , h_p);
fprintf('Lowest Closing Price: %.2f\n' , l_p);
fprintf('Consecutive days with price increase: %d\n', p_i);


% create plot

figure;
plot(closingprices, '-o', 'LineWidth',1.5);
hold on;
%Labels..dont know why line 35 is effecting this??
yline(a_p, '-r', 'Average price'); % horizontal line ap
%"voiding" these two lines allows for my charts to be generated with labels.
%Really confused of why this is not working
%yline(h_p, '-p', 'Highest price'); % horizontal line hp
%yline(l_p, '-g', 'Lowest price'); % horizontal line lp
hold off;

% legend formatting
xlabel('Day');
ylabel('Closing price');
title('Stock market Analysis');
legend('Daily Prices', 'Average Prices', 'Highest Prices', 'Lowest Price')
grid on;

% save as pic
saveas(gcf, 'stock_analysis.png');
% send summary to 'stock_summary.txt' and printing the calculated average
% price, lowest price, highest price
fileID = fopen('stock_summary.txt','w');
fprintf(fileID,'stock market analysis summary');
fprintf(fileID,'Average Closing Price : %.2f\n', a_p);
fprintf(fileID,'Highest Closing Price: %.2f\n' , h_p);
fprintf(fileID,'Lowest Closing Price: %.2f\n' , l_p);
fprintf(fileID,'Consecutive days with price increase: %d\n', p_i);
fclose(fileID);


disp('Analysis finished.');