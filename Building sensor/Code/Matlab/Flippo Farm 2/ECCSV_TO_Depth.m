function[High, Low]= ECCSV_TO_Depth(fileName)

%--------------------------------------------------------------------------
% File:        ECCSV_TO_Depth.m
% Description: Opens a csv file with EC data and converts it to rows of EC
%              data vs depth
% Author:      Jonah Smith
% Date:        25 Oct  2019
% Plateform:   MATLAB R2019b (Version 9.7.0.1190202), Windows 10 Pro
%
% NOTE:
% This script is designed to work with a "dead-reckoning" survey/
%
% Inputs:
%       fileName: name of file to be opened.
% Outputs:
%       
%--------------------------------------------------------------------------

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
% Finds the marker data
markerData = fullFile.data(:,find(contains(fullFile.textdata,'Mark')));

mark = 0;
markerPoints = [];

for j = 1:length(markerData)
    % If the point does not equal the last marker then store coord
    if markerData(j) ~= mark 
        markerPoints = [markerPoints; xCoord(j) yCoord(j)];
        mark = mark + 1; % increant last marker
    end
end
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

ECData = [];
skinDepth = [];
frequency = [];

for j = 1:length(ECindex)
    ECData(:,j) = fullFile.data(:,ECindex(j));
    ECName(j) = fullFile.textdata(ECindex(j));
    
    if ( j ~= length(ECindex))
        
        tempFreq = strrep(ECName(1,j),'EC',''); % Pulls out frequency and 
        tempFreq = strrep(tempFreq,'Hz[mS/m]',''); % converts to int
        tempFreq = cell2mat(tempFreq);
        frequency(j) = str2num(tempFreq);
        
        for i = 1:length(ECData(:,j))
            skinDepth(j,i) = sqrt(sqrt(2/((ECData(i,j)/1000)*(4*pi*10^(-7))*2*pi*frequency(j)))); 
        end
        
    end
    figure(j)
    hold on
    r = 0;
    for k = 1:length(yCoord)
        if (yCoord(k) == 0)
            r= r+1;
        end
    end
    xlin = linspace(xCoord(1),xCoord(r),100); 
    ylin = linspace(min(abs(yCoord)),max(abs(xCoord)),100); 
    [X,Y] = meshgrid(xlin,ylin);
    %plot(xCoord(1:r),skinDepth(j,1:r));
    
end
xlin = linspace(xCoord(1),xCoord(r),100); 
ylin = linspace(min(abs(yCoord)),max(abs(xCoord)),100); 
[X,Y] = meshgrid(xlin,ylin);


end