function[High, Low, Avg]= ECCSV_TO_MAP_V2_1(fileName)
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

fullFile = importdata(fileName); % opens passed in csv file 


%  Finds X and Y coordinate data and stores
xCoord = fullFile.data(:,find(contains(fullFile.textdata,'X')));
yCoord = fullFile.data(:,find(contains(fullFile.textdata,'Y')));
xCoordD = [xCoord; flip(xCoord)];
yCoordD = [yCoord; yCoord+5];
% if X and y coordinates arent found, exits
if isempty(xCoordD) | isempty(yCoordD)
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
        markerPoints = [markerPoints; xCoordD(j) yCoordD(j)];
        mark = mark + 1; % increant last marker
    end
end

% Takes X and Y coordinate data and converts into meshgrid
% changing the number in linspace with change the resolution of the Contour
% map
xlin = linspace(min(abs(xCoordD)),max(abs(xCoordD)),1000); 
ylin = linspace(min(abs(yCoordD)),max(abs(yCoordD)),1000); 
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
ECData2 = [];
High = [];
Low = [];
Avg = [];

for j = 1:length(ECindex)
    % Stores Data and name for each frequency
    ECData(:,j) = fullFile.data(:,ECindex(j));
    ECName(j) = fullFile.textdata(ECindex(j));
    ECData2(:,j) = [ ECData(:,j); flip(ECData(:,j))];
    
    % High, low, and Average for each Frequency and total    
    High(1,j) = max(ECData(:,j));
    Low(1,j) = min(ECData(:,j));
    Avg(1,j) = mean(ECData(:,j)); 
    
    % Converts into grid data
    ECGridData = griddata(abs(xCoordD), abs(yCoordD), ECData2(:,j), X, Y, 'cubic');
     if ( j ~= length(ECindex))
        tempFreq = strrep(ECName(1,j),'EC',''); % Pulls out frequency and 
        tempFreq = strrep(tempFreq,'Hz[mS/m]',''); % converts to int
        tempFreq = cell2mat(tempFreq);
        frequency(j) = str2num(tempFreq);
        skinDepth(j) = sqrt(sqrt(2/((Avg(1,j)/1000)*(4*pi*10^(-7))*2*pi*frequency(j))));
        for i = 1:length(ECData(:,j))
            skinDepthXY(j,i) = sqrt(sqrt(2/((ECData(i,j))/1000)*(4*pi*10^(-7))*2*pi*frequency(j)));
        end
    else
        skinDepth(j) = mean(skinDepth);
        for i = 1:length(ECData(:,j))
            skinDepthXY(j,i) = mean(skinDepthXY(:,i));
        end
    end
    
    %Graphing 
    figure(j)
    subplot(2,1,1);
    hold on
    contourf(X,Y,ECGridData)
    if markerPoints ~= 0 % if there where any marks to plot
        scatter(markerPoints(:,1), markerPoints(:,2),'filled', 'r');
    end
    c = colorbar;
    c.Label.String = 'Conductivity (mS/m)';
    caxis([50 250]);
    if( j ~= length(ECindex))
        title(['EC Contour Plot at ',num2str(frequency(j)),' Hz and average depth = ',num2str(skinDepth(j)),'(m)'])
    else
        title(['Total EC Countour Plot with average depth = ',num2str(skinDepth(j)),'(m)'])
    end
    
    subplot(2,1,2);
    hold on
    plot(-xCoord, -skinDepthXY(j,:));
    area(-xCoord, -skinDepthXY(j,:));
    set(gca, 'XAxisLocation', 'top')
    ylabel('Depth(m)');
    
end

end