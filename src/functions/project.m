function [imageProjected] = project(image, backColor, projColor)
    vSize = size(image, 1);
    hSize = size(image, 2);
    
    imageProjected = image;
    
    for i = 1 : vSize
        for j = 1 : hSize
            if similarOrEqualColor(double(reshape(image(i, j, :), 1, 3)), backColor)
                imageProjected(i, j, :) = projColor;
            end
        end
    end
end