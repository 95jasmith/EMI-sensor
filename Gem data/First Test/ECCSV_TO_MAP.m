function[High, Low, Avg, Depth]= ECCSV_TO_MAP (fileName)
%
% Opens CSV file with EC data from GEM2 and coverts it to a map of the EC
% data
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
%       Depth: An estimate of the depth of investegation THIS IS NOT THE
%       ACTUCAL DEPTH AND IS ONLY AN ESTIMATE BASED ON THE SKIN EFFECT

fullFile = importdata(fileName); % opens passed in csv file 


xCoord = fullFile.data(:,3); % Stores X axis data as an array
yCoord = fullFile.data(:,4); % Stores Y axis data as an array
EC450 =  fullFile.data(:,20); % Stores the EC @ 450 Hz as an array
EC1530 = fullFile.data(:,21); % Stores the EC @ 5310 Hz as an array
EC5310 = fullFile.data(:,22); % Stores the EC @ 5310 Hz as an array
EC18330 = fullFile.data(:,23); % Stores the EC @ 18330 Hz as an array
EC63030 = fullFile.data(:,24); % Stores the EC @  63030 Hz as an array
ECT = fullFile.data(:,25);   % Stores the EC total as an array


% creates arrays with max min and average for each frequency and total
High = [max(EC450); max(EC1530); max(EC5310); max(EC18330); max(EC63030); max(ECT)];
Low = [min(EC450); min(EC1530); min(EC5310); min(EC18330); min(EC63030); min(ECT)];
Avg = [mean(EC450); mean(EC1530); mean(EC5310); mean(EC18330); mean(EC63030); mean(ECT)];

% Estimate of depth at 450 Hz in meters
skinDepth450 = sqrt(2/(Avg(1)*(4*pi*10^(-7))*(2*pi*450)));

% Estimate of depth at 1530 Hz in meters
skinDepth1530 = sqrt(2/(Avg(2)*(4*pi*10^(-7))*(2*pi*1530)));

% Estimate of depth at 5310 Hz in meters
skinDepth5310 = sqrt(2/(Avg(3)*(4*pi*10^(-7))*(2*pi*5310)));

% Estimate of depth at 18330 Hz in meters
skinDepth18330 = sqrt(2/(Avg(4)*(4*pi*10^(-7))*(2*pi*18330)));

% Estimate of depth at 63030 Hz in meters
skinDepth63030 = sqrt(2/(Avg(5)*(4*pi*10^(-7))*(2*pi*63030)));

% Output array of depth estimates
Depth = [skinDepth450; skinDepth1530; skinDepth5310; skinDepth18330; skinDepth63030];

xlin = linspace(min(xCoord),max(xCoord),100); % Takes x and y coordinates
ylin = linspace(min(yCoord),max(xCoord),100); % and converts into meshgrid
[X,Y] = meshgrid(xlin,ylin);

EC450grid = griddata(xCoord, yCoord, EC450, X, Y, 'cubic'); % converts into
EC1530grid = griddata(xCoord, yCoord, EC1530, X, Y, 'cubic'); % griddate
EC5310grid = griddata(xCoord, yCoord, EC5310, X, Y, 'cubic');
EC18330grid = griddata(xCoord, yCoord, EC18330, X, Y, 'cubic');
EC63030grid = griddata(xCoord, yCoord, EC63030, X, Y, 'cubic');
ECTgrid = griddata(xCoord, yCoord, ECT, X, Y, 'cubic');

% plots for each freqency and total
figure(1)
contourf(X,Y,EC450grid)
colorbar
title('Contour Map of EC @ 450 Hz')
txt = ['Depth: ' num2str(skinDepth450) '(m)'];
xlabel(txt)

figure(2)
contourf(X,Y,EC1530grid)
colorbar
title('Contour Map of EC @ 1530 Hz')
txt = ['Depth: ' num2str(skinDepth1530) '(m)'];
xlabel(txt)

figure(3)
contourf(X,Y,EC5310grid)
colorbar
title('Contour Map of EC @ 5310 Hz')
txt = ['Depth: ' num2str(skinDepth5310) '(m)'];
xlabel(txt)

figure(4)
contourf(X,Y,EC18330grid)
colorbar
title('Contour Map of EC @ 18330 Hz')
txt = ['Depth: ' num2str(skinDepth18330) '(m)'];
xlabel(txt)

figure(5)
contourf(X,Y,EC63030grid)
colorbar
title('Contour Map of EC @ 63030 Hz')
txt = ['Depth: ' num2str(skinDepth63030) '(m)'];
xlabel(txt)

figure(6)
contourf(X,Y,ECTgrid)
colorbar
title('Contour Map of Total EC')


end