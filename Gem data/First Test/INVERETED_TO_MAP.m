function[High, Low, Avg, percentKept]= INVERETED_TO_MAP(fileName, layerNum)


fullFile = importdata(fileName); % opens passed in csv file

xCoord = fullFile.data(:,3); % Stores X axis data as an array
yCoord = fullFile.data(:,4); % Stores Y axis data as an array

r = length(fullFile.data(:,end));

if layerNum == 1
    resLayer1 = fullFile.data(:,10);
j = [];
l = [];
    for i = 1:r
        if fullFile.data(i,end) > 10
        j = [j,i];
        end
        if fullFile.data(i,end) < 20
            l = [l,i];
        end
    end
    percentKept = (r-length(j))/r * 100;
    percentUnder20 = length(l)/r * 100
    resLayer1(j,:) = [];
    xCoord(j,:) = [];
    yCoord(j,:) = [];
    
  
    xlin = linspace(min(xCoord),max(xCoord),200); % Takes x and y coordinates
    ylin = linspace(min(yCoord),max(xCoord),200); % and converts into meshgrid
    [X,Y] = meshgrid(xlin,ylin);
    High = max(resLayer1);
    Low = min(resLayer1);
    Avg = mean(resLayer1);
    %{
    % Converts into griddate
    layer1Grid = griddata(xCoord, yCoord, resLayer1, X, Y, 'cubic');
    
    figure(1)
    contourf(X,Y,layer1Grid)
    colorbar
    title('Contour Map of Layer 1')
    %}
    
elseif layerNum == 2
    resLayer1 = fullFile.data(:,10);
    resLayer2 = fullFile.data(:,11);
    j = [];
    l = [];
    for i = 1:r
        if fullFile.data(i,end) > 10
        j = [j,i];
        end
        if fullFile.data(i,end) < 20
            l = [l,i];
        end
    end
    percentKept = (r-length(j))/r * 100;
    percentUnder20 = length(l)/r * 100
    resLayer1(j,:) = [];
    resLayer2(j,:) = [];
    xCoord(j,:) = [];
    yCoord(j,:) = [];
    
    xlin = linspace(min(xCoord),max(xCoord),200); % Takes x and y coordinates
    ylin = linspace(min(yCoord),max(xCoord),200); % and converts into meshgrid
    [X,Y] = meshgrid(xlin,ylin);
    High = [max(resLayer1); max(resLayer2)];
    Low = [min(resLayer1); min(resLayer2)];
    Avg = [mean(resLayer1); mean(resLayer2)];
    %{
    % Converts into griddate
    layer1Grid = griddata(xCoord, yCoord, resLayer1, X, Y, 'cubic');
    layer2Grid = griddata(xCoord, yCoord, resLayer2, X, Y, 'cubic'); 
    
    figure(1)
    contourf(X,Y,layer1Grid)
    colorbar
    title('Contour Map of Layer 1')

    figure(2)
    contourf(X,Y,layer2Grid)
    colorbar
    title('Contour Map of Layer 2')
    %}

elseif layerNum == 3
    resLayer1 = fullFile.data(:,10);
    resLayer2 = fullFile.data(:,11);
    resLayer3 = fullFile.data(:,12);
j = [];
l = [];
    for i = 1:r
        if fullFile.data(i,end) > 10
            j = [j,i];
        end
        if fullFile.data(i,end) < 20
            l = [l,i];
        end
    end
    percentKept = (r-length(j))/r * 100;
    percentUnder20 = length(l)/r * 100
    resLayer1(j,:) = [];
    resLayer2(j,:) = [];
    resLayer3(j,:) = [];
    xCoord(j,:) = [];
    yCoord(j,:) = [];
    
    xlin = linspace(min(xCoord),max(xCoord),200); % Takes x and y coordinates
    ylin = linspace(min(yCoord),max(xCoord),200); % and converts into meshgrid
    [X,Y] = meshgrid(xlin,ylin);
    
    High = [max(resLayer1); max(resLayer2); max(resLayer3)];
    Low = [min(resLayer1); min(resLayer2); min(resLayer3)];
    Avg = [mean(resLayer1); mean(resLayer2); mean(resLayer3)];
    %{
    % Converts into griddate
    layer1Grid = griddata(xCoord, yCoord, resLayer1, X, Y, 'cubic');
    layer2Grid = griddata(xCoord, yCoord, resLayer2, X, Y, 'cubic'); 
    layer3Grid = griddata(xCoord, yCoord, resLayer3, X, Y, 'cubic');
    
    figure(1)
    contourf(X,Y,layer1Grid)
    colorbar
    title('Contour Map of Layer 1')

    figure(2)
    contourf(X,Y,layer2Grid)
    colorbar
    title('Contour Map of Layer 2')

    figure(3)
    contourf(X,Y,layer3Grid)
    colorbar
    title('Contour Map of Layer 3')
    %}
    
else
    print('Invalid number of Layers')
end
    
    
end

