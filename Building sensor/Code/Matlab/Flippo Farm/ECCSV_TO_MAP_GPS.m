function[High, Low, Avg]= ECCSV_TO_MAP_GPS(fileName)

%-------------------------------------------------------------------------
% File:        ECCSV_TO_MAP_GPS.m
% Description: Opens a csv file with EC and GPS data from the GEM2 sensor
%              and converts it to a map of the EC data
% Author:      Jonah Smith
% Date:        3 Sept 2019
% Plateform:   MATLAB R2019a (Version 9.6.0.1072779), Windows 10 Pro
%
% NOTE:
% This script is designed to work with a gps survey and might cause issues
% for a "dead-reckoning" survey. It is suggested to use "ECCSV_TO_MAP_V2.m"
% for "dead-reckoning" survery plots.
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
%-------------------------------------------------------------------------

% This warning comes from ploting when a measurement was taken more than
% once at the same point, it can be safely ignored
warning('off','MATLAB:griddata:DuplicateDataPoints');
close all;

fullFile = importdata(fileName); % opens passed in csv file 


%  Finds X and Y coordinate data and stores
xCoord = fullFile.data(:,find(contains(fullFile.textdata,'X')));
yCoord = fullFile.data(:,find(contains(fullFile.textdata,'Y')));

% if X and y coordinates arent found, exits
if isempty(xCoord) | isempty(yCoord)
    disp('Improper file format!');
    disp('No Coordinate data!');
    High = [];
    Low = [];
    Avg = [];
    return
end

% Finds the lowest value for x and makes the point (0,0) for graphing
[xZero,xZeroI] = min(xCoord);
yZero = yCoord(xZeroI);
xCoordZero = xCoord - xZero; % shifting points
yCoordZero = yCoord - yZero; % shifting points

% Finds the marker data
markerData = fullFile.data(:,find(contains(fullFile.textdata,'Mark')));

mark = 0;
markerPoints = [];

for j = 1:length(markerData)
    % If the point does not equal the last marker then store coord
    if markerData(j) ~= mark 
        markerPoints = [markerPoints; xCoordZero(j) yCoordZero(j)];
        mark = mark + 1; % increant last marker
    end
end

% Takes X and Y coordinate data and converts into meshgrid
% changing the number in linspace with change the resolution of the Contour
% map
xlin = linspace(min(xCoordZero),max(xCoordZero),100); 
ylin = linspace(min(yCoordZero),max(xCoordZero),100); 
[X,Y] = meshgrid(xlin,ylin);

% Finds the Index values for each EC column
ECindex = find(contains(fullFile.textdata,'EC'));

% If the EC values are not found, exits
if isempty(ECindex)
    disp('Improper file format!');
    disp('EC values not found!');
    High = [];
    Low = [];
    Avg = [];
    return
end
% Variable Initializationd 
ECData = [];
High = [];
Low = [];
Avg = [];
DepthEst = [];

for j = 1:length(ECindex)
    % Stores Data and name for each frequency
    ECData(:,j) = fullFile.data(:,ECindex(j));
    ECName(j) = fullFile.textdata(ECindex(j));
    
    % High, low, and Average for each Frequency and total    
    High(1,j) = max(ECData(:,j));
    Low(1,j) = min(ECData(:,j));
    Avg(1,j) = mean(ECData(:,j));
    DepthEst(1,j) = 5; % add caculation for depth estimation 
    
    
    % Converts into grid data
    ECGridData = griddata(xCoordZero, yCoordZero, ECData(:,j), X, Y, 'cubic');
    
    % Graphing 
    f = figure(j);
    hold on
    contourf(X,Y,ECGridData) % plot of data
    p = plot(xCoordZero, yCoordZero, 'm' ); % plot of path surveyed
    if markerPoints ~= 0 % if there where any marks to plot
        scatter(markerPoints(:,1), markerPoints(:,2),'filled', 'r');
    end
    % labeling and formating
    f.WindowState = 'maximized'; % makes plots fullscreen
    legend([p(1)], 'Path of survey');
    h = colorbar;
    set(get(h,'label'),'string','EC (ms/m)');
    title(ECName(j))
    txt = ['Depth estimation: ' num2str(DepthEst(1,j)) ' (m)'];
    xlabel(txt);
    yticklabels([]);
    xticklabels([]);
    
end % of ploting loop

end % of function