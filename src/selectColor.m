function [image] = selectColor(imagePath, color)
    image = imread(imagePath);
    
    hSize = size(image, 2);
    vSize = size(image, 1);
    
    for i = 1 : vSize
        for j = 1 : hSize
            if ~similarColor(cast(reshape(image(i, j, :), 1, 3), 'like', color), color)
                image(i, j, :) = [0, 0, 0];
            end
        end
    end
end