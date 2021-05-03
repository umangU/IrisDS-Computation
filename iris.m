% Opening the file in read mode
fid = fopen('C:/Users/Umang/Downloads/MATLAB/iris.txt','r');
%Storing data in a cell array
S = textscan(fid, '%f %f %f %f', 'Delimiter',' ');
% Converted cell array to matrix
B = [S{:}];
% Dividing the figure to embed three plots in same figure
subplot(3,1,1)
% Line Plot
d = plot(B);
props = {'Linewidth','LineStyle','MarkerSize'};
vals = {2,':',10};
% Setting the graphic object properties with new values
set(d,props,vals);
% Reading the graphic object properties
get(d,props);
subplot(3,1,2);
% Bar Graph
bar(B);
subplot(3,1,3);
% 3-D Stem Plot 
stem3(B);
fclose(fid);
% Among the above three different types of plots, Line graphs is the best
% way to describe the data as it primarily focuses on the trend and it makes 
% it easier to compare changes over the same period and multiple values
