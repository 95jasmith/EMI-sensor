function ECMprint2csv(inputStruc,fileName)
%
% Prints a Sturc to a CSV file from importing data from the GEM-2 sensor
% 

data = inputStruc.data; % stores data
[l,m] = size(data); % Finds sizes
commaHeader = [inputStruc.textdata;repmat({','},1,numel...
    (inputStruc.textdata))]; %insert commaas
commaHeader = commaHeader(:)';
textHeader = cell2mat(commaHeader); %cHeader in text with commas
%write header to file
fid = fopen(fileName,'w'); 
fprintf(fid,'%s\n',textHeader);
fclose(fid);
fid = fopen(fileName,'a');
% for loop to write data
for j = 1:l
    temp = data(j,:); % 1 row of data
    % converts to string with comma between each vaule
    temp = num2str(temp,'%f\x2c');
    
    fprintf(fid,temp); % Prints row of data
    fprintf(fid,'\n'); % Prints a new line
    
end
fclose('all'); % closes files


end