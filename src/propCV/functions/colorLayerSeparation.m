function [imageLayers] = colorLayerSeparation(image)
    vSize = size(image, 1);
    hSize = size(image, 2);
    
    colorFrequence = getColorsByFrequence(image);
    imageLayers = uint8(zeros(size(colorFrequence, 1), vSize, hSize, 3));
    
    for i = 1 : size(colorFrequence, 1)
        imageLayers(i, :, :, :) = selectColor(image, colorFrequence(i, :));
    end
end