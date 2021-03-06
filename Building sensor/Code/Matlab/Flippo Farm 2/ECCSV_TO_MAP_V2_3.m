function[High, Low, Avg]= ECCSV_TO_MAP_V2(fileName1, fileName2, fileName3)
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
if isempty(xCoord1) | isempty(yCoord1)
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
        markerPoints = [markerPoints; xCoord1(j) yCoord1(j)];
        mark = mark + 1; % increant last marker
    end
end

% Takes X and Y coordinate data and converts into meshgrid
% changing the number in linspace with change the resolution of the Contour
% map

xlin = linspace(min(xCoord),max(xCoord),100);
ylin = linspace(min(yCoord),max(yCoord),100);
[X,Y] = meshgrid(xlin,ylin);

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
% Variable Initialization 
ECData1 = [];
ECData2 = [];
ECData3 = [];
ECData = [];
High = [];
Low = [];
Avg = [];
skinDepth = [];
frequency = [];

for j = 1:length(ECindex1)
    % Stores Data and name for each frequency
    ECData1(:,j) = fullFile1.data(:,ECindex1(j));
    ECData2(:,j) = fullFile2.data(:,ECindex2(j));
    ECData3(:,j) = fullFile3.data(:,ECindex3(j));
    ECName(j) = fullFile1.textdata(ECindex1(j));
    ECData(:,j) = [ECData1(:,j); ECData2(:,j); ECData3(:,j)];
    
    % High, low, and Average for each Frequency and total
    
    High(1,j) = max(max(ECData1(:,j)),max(ECData2(:,j)));
    High(1,j) = max(High(1,j), max(ECData3(:,j)));
    Low(1,j) = min(min(ECData1(:,j)), min(ECData2(:,j)));
    Low(1,j) = min(Low(1,j), min(ECData3(:,j)));
    Avg(1,j) = mean([mean(ECData1(:,j)) mean(ECData2(:,j)) mean(ECData3(:,j))]);
    
    if ( j ~= length(ECindex1))
        tempFreq = strrep(ECName(1,j),'EC',''); % Pulls out frequency and 
        tempFreq = strrep(tempFreq,'Hz[mS/m]',''); % converts to int
        tempFreq = cell2mat(tempFreq);
        frequency(j) = str2num(tempFreq);
        skinDepth(j) = sqrt(sqrt(2/((Avg(1,j)/1000)*(4*pi*10^(-7))*2*pi*frequency(j))));
    else
        skinDepth(j) = mean(skinDepth);
    end
    
    % Converts into grid data
    ECGridData = griddata(xCoord, yCoord, ECData(:,j),X,Y, 'cubic');
    
    % Graphing 
    figure(j)
    axis equal
    camroll(90)
    hold on
    contourf(X,Y,ECGridData)
    if markerPoints ~= 0 % if there where any marks to plot
        scatter(markerPoints(:,1), markerPoints(:,2),'filled', 'r');
    end
    c = colorbar('westoutside');
    c.Label.String = 'Conductivity (mS/m)';
    if( j ~= length(ECindex1))
        title(['EC Contour Plot at ',num2str(frequency(j)),' Hz and average depth = ',num2str(skinDepth(j)),'(m)'])
    else
        title(['Total EC Countour Plot with average depth = ',num2str(skinDepth(j)),'(m)'])
    end
    ylabel("(ft)")
    xlabel("(ft)")
    
end
end