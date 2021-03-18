%Opening the file in read mode
fid = fopen('C:/Users/Umang/Downloads/MATLAB/iris.txt','r');
%Storing data in a cell array
read1 = textscan(fid, '%f %f %*f %*f', 'Delimiter',' ');
%Closing the file after reading
fclose(fid);
fid = fopen('C:/Users/Umang/Downloads/MATLAB/iris.txt','r');
read2 = textscan(fid, '%*f %*f %f %*f', 'Delimiter',' ');
fclose(fid);
fid = fopen('C:/Users/Umang/Downloads/MATLAB/iris.txt','r');
read3 = textscan(fid, '%*f %*f %*f %f', 'Delimiter',' ');
fclose(fid);
%Converted cell array to matrix
B = cell2mat(read1);
C = [read2{:}];
D = [read3{:}];
%Dividing the figure to embed three plots in same figure
subplot(3,1,1)
%Line Plot for Plotting Sepal Length and Sepal Width
d = plot(B);
legend('sepal length','sepal width');
props = {'Linewidth','LineStyle','MarkerSize'};
vals = {3,':',10};
%Setting the graphic object properties with new values
set(d,props,vals);
%Reading the graphic object properties
get(d,props);
subplot(3,1,2);
%Bar Graph for plotting Petal Length
bar(C);
legend('petal length');
subplot(3,1,3);
%3-D Stem Plot for plotting Petal Width
stem(D);
legend('petal width');

%Among the above three different types of plots, Line graph is the best way to 
%describe the data as it shows the change in the data values over a period of 
%time thus making it easier to compare changes on different data on the same 
%time period and over multiple values.
