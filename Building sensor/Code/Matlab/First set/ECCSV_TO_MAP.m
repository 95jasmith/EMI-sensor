function[High, Low, Avg]= ECCSV_TO_MAP (fileName)
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
High = [max(EC450); max(EC1530); max(EC5310); max(EC18330); max(EC63030)];
Low = [min(EC450); min(EC1530); min(EC5310); min(EC18330); min(EC63030)];
Avg = [mean(EC450); mean(EC1530); mean(EC5310); mean(EC18330); mean(EC63030)];


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

figure(2)
contourf(X,Y,EC1530grid)
colorbar
title('Contour Map of EC @ 1530 Hz')

figure(3)
contourf(X,Y,EC5310grid)
colorbar
title('Contour Map of EC @ 5310 Hz')

figure(4)
contourf(X,Y,EC18330grid)
colorbar
title('Contour Map of EC @ 18330 Hz')

figure(5)
contourf(X,Y,EC63030grid)
colorbar
title('Contour Map of EC @ 63030 Hz')

figure(6)
contourf(X,Y,ECTgrid)
colorbar
title('Contour Map of Total EC')


end