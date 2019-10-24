function[High, Low, Avg]= ECCSV_TO_MAP_V2_4(fileName1, fileName2, fileName3)
%
% Opens CSV file with EC data from GEM2 and coverts it to a map of the EC
% data
%
% THIS SCRIPT WORKS ONLY WITH A DEAD-RECKONING SURVEY ONLY!!! WILL NOT WORK
% WITH A GPS SURVEY!!!
%
% Inputs:
%       fileName: name of file to be opened.
% Outputs:
%       High: an array with the max value from each frequency and Total in 
%             mS per m
%       Low: an array with the min value from each frequency and Total
%             mS per m
%       Avg: an array with the average value from each frequency and Total
%             mS per m

close all;

fullFile1 = importdata(fileName1); % opens passed in csv file 
fullFile2 = importdata(fileName2); % opens passed in csv file
fullFile3 = importdata(fileName3); % opens passed in csv file

%  Finds X and Y coordinate data and stores
xCoord1 = abs(fullFile1.data(:,find(contains(fullFile1.textdata,'X'))));
yCoord1 = abs(fullFile1.data(:,find(contains(fullFile1.textdata,'Y'))));
xCoord2 = abs(fullFile2.data(:,find(contains(fullFile2.textdata,'X'))));
yCoord2 = abs(fullFile2.data(:,find(contains(fullFile2.textdata,'Y'))));
xCoord3 = abs(fullFile3.data(:,find(contains(fullFile3.textdata,'X'))));
yCoord3 = abs(fullFile3.data(:,find(contains(fullFile3.textdata,'Y'))));

xCoord = [xCoord1; xCoord2; xCoord3];
yCoord = [yCoord1; yCoord2+20; yCoord3+40];
% if X and y coordinates arent found, exits
if isempty(xCoord) | isempty(yCoord)
    disp('Improper file format!');
    disp('No Coordinate data!');
    High = [];
    Low = [];
    Avg = [];
    return
end
% Finds the marker data
markerData = fullFile1.data(:,find(contains(fullFile1.textdata,'Mark')));

mark = 0;
markerPoints = [];

for j = 1:length(markerData)
    % If the point does not equal the last marker then store coord
    if markerData(j) ~= mark 
        markerPoints = [markerPoints; xCoord(j) yCoord(j)];
        mark = mark + 1; % increant last marker
    end
end

% Takes X and Y coordinate data and converts into meshgrid
% changing the number in linspace with change the resolution of the Contour
% map
xlin1 = linspace(min(xCoord),max(xCoord),100); 
ylin1 = linspace(min(yCoord),max(xCoord),100); 
[X1,Y1] = meshgrid(xlin1,ylin1);
%xlin2 = linspace(min(xCoord2),max(xCoord2),100); 
%ylin2 = linspace(min(yCoord2),max(xCoord2),100)+20; 
%[X2,Y2] = meshgrid(xlin2,ylin2);
%xlin3 = linspace(min(xCoord3),max(xCoord3),100); 
%ylin3 = linspace(min(yCoord3),max(xCoord3),100)+40; 
%[X3,Y3] = meshgrid(xlin3,ylin3);

% Finds the Index values for each EC column
ECindex1 = find(contains(fullFile1.textdata,'EC'));
ECindex2 = find(contains(fullFile2.textdata,'EC'));
ECindex3 = find(contains(fullFile3.textdata,'EC'));

% If the EC values are not found, exits
if isempty(ECindex1)
    disp('Improper file format!');
    disp('EC values not found!');
    High = [];
    Low = [];
    Avg = [];
    return
end
% Variable Initializationd 
ECData = [];
ECData2 = [];
ECData3 = [];
High = [];
Low = [];
Avg = [];

for j = 1:length(ECindex1)
    % Stores Data and name for each frequency
    ECData1 = fullFile1.data(:,ECindex1(j));
    ECData2 = fullFile2.data(:,ECindex2(j));
    ECData3 = fullFile3.data(:,ECindex3(j));
    ECData(:,j) = [ECData1; ECData2; ECData3];
    ECName(j) = fullFile1.textdata(ECindex1(j));
    
    % High, low, and Average for each Frequency and total    
    High(1,j) = max(ECData(:,j));
    Low(1,j) = min(ECData(:,j));
    Avg(1,j) = mean(ECData(:,j)); 
    
    % Converts into grid data
    ECGridData1 = griddata(xCoord, yCoord, ECData(:,j), X1, Y1, 'cubic');
%    ECGridData2 = griddata(xCoord2, yCoord2+20, ECData2(:,j), X2, Y2, 'cubic');
%    ECGridData3 = griddata(xCoord3, yCoord3+40, ECData3(:,j), X3, Y3, 'cubic');
    
    % Graphing 
    figure(j)
    hold on
    contourf(X1,Y1,ECGridData1)
%    contourf(X2,Y2,ECGridData2)
%    contourf(X3,Y3,ECGridData3)
    if markerPoints ~= 0 % if there where any marks to plot
        scatter(markerPoints(:,1), markerPoints(:,2),'filled', 'r');
    end
    colorbar
    title(ECName(j))
    
end

end