function [colorFrequence] = getColorsByFrequence(image, nColors)    
    hSize = size(image, 2);
    vSize = size(image, 1);
    
    colors = zeros(256, 256, 256);
    
    for i = 1 : vSize
        for j = 1 : hSize
            c = int16(reshape(image(i, j, :), 1, 3)) + 1;
            colors(c(1), c(2), c(3)) = colors(c(1), c(2), c(3)) + 1;
        end
    end
    
    colorFrequence = zeros(256*256*256, 4);
    
    for i = 1 : 256
        for j = 1 : 256
            for k = 1 : 256
                colorFrequence((i-1)*256*256 + (j-1)*256 + k, :) =  [colors(i, j, k), i - 1, j - 1, k - 1];
            end
        end
    end
    
    colorFrequence = colorFrequence(colorFrequence(:, 1) > 0, :, :, :);
    colorFrequence = sortrows(colorFrequence, {'descend'});
    colorFrequence = colorFrequence(:,2:end);
    
    for i = 1 : size(colorFrequence, 1) - 1
        j = i + 1;
        while j <= size(colorFrequence, 1)
            if ~exist('nColors', 'var')
                if similarColor(colorFrequence(i, :), colorFrequence(j, :))
                    colorFrequence(j, :) = [];
                else
                    j = j + 1;
                end
            else
                if similarColor(colorFrequence(i, :), colorFrequence(j, :), 1/nColors)
                    colorFrequence(j, :) = [];
                else
                    j = j + 1;
                end
            end
        end
    end
        
    if exist('nColors', 'var')
        colorFrequence = colorFrequence(1:nColors, :);
    end
    
end