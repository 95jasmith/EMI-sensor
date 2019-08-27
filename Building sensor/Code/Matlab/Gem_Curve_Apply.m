function Gem_Curve_Apply(inFileName, outFileName)
%
% Applies desired curve to raw CSV file from Gem-2 Sensor
% Used to calabrate sensor data for offset for robot
%
% Inputs:
%       inFileName: Name of file to apply offset
%       outFileName: Name of output file
% Outputs:
%       No outputs currently
%

inputFile = importdata(inFileName); % opens passed in csv file

% Finds the Index values for each EC column
ipIndex = find(contains(inputFile.textdata,'I'));
qpIndex = find(contains(inputFile.textdata,'Q'));

for j = 1:length(ipIndex)
    % Stores Data and name for each frequency
    ipData(:,j) = inputFile.data(:,ipIndex(j));
    
end

for j = 1:length(qpIndex)
    % Stores Data and name for each frequency
    qpData(:,j) = inputFile.data(:,qpIndex(j));
    
end
%
% HERE IS WHERE CURVE SHOULD BE APPLIED INPLACE OF 2* THAT IS CURRENTLY
% DONE!!!!!!!!!
iDataOut = 2* ipData;
qDataOut = 2* qpData;

outputFile = inputFile; % Makes a copy of input file for editing

% places curved data into struct for in phase data
for j = 1:length(ipIndex)
    outputFile.data(:,ipIndex(j)) = iDataOut(:,j); 

end

% places curved data into struct for q phase data
for j = 1:length(qpIndex)
    outputFile.data(:,qpIndex(j)) = qDataOut(:,j);
end

% prints curved data and column headings to output file
ECMprint2csv(outputFile,outFileName);


end