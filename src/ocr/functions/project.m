function [image] = project(image, backColor, projColor)
    vSize = size(image, 1);
    hSize = size(image, 2);
    
    for i = 1 : vSize
        for j = 1 : hSize
            if similarOrEqualColor(double(reshape(image(i, j, :), 1, 3)), backColor)
                image(i, j, :) = projColor;
            end
        end
    end
end