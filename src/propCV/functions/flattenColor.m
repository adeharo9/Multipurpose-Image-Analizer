function [image] = flattenColor(imagePath)
    image = imread(imagePath);
    %freqColors = getColorsByFrequence(image, 8);
    freqColors = colorPalette();
    
%     for i = 1 : size(colors, 1)
%         image = layerColorFlatten(image, colors(i, :));
%     end

    vSize = size(image, 1);
    hSize = size(image, 2);
    
    for i = 1 : vSize
        for j = 1 : hSize
            image(i, j, :) = projectColor(reshape(image(i, j, :), 1, 3), freqColors);
        end
    end
end