function [imageGray] = rgb2Gray(image, thresholdB)
%     color = [0, 0, 0];
    vSize = size(image, 1);
    hSize = size(image, 2);
    
    imageGray = image;
    
    for i = 1 : vSize
        for j = 1 : hSize
%             if similarOrEqualColor(double(reshape(image(i, j, :), 1, 3)), color, thresholdB)
%                 imageGray(i, j, :) = color;
%             else
                colorGray = mean(image(i, j, :));
                imageGray(i, j, :) = [colorGray, colorGray, colorGray];
%             end
        end
    end
end