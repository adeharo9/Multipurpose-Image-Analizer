function [image] = layerColorFlatten(image, color)    
    hSize = size(image, 2);
    vSize = size(image, 1);
    
    for i = 1 : vSize
        for j = 1 : hSize
            if similarColor(cast(reshape(image(i, j, :), 1, 3), 'like', color), color)
                image(i, j, :) = color;
            end
        end
    end
end