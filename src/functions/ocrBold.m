function [imageBold] = ocrBold(image, threshold, backColor)
    imageBold = rgb2Gray(image, threshold);
    
    if isequal(backColor, [0, 0, 0])
        th = threshold;
    else
        th = 1 - threshold;
    end
    imageBold = imageBold >= ceil(255*th);
    %imageBold = gray2Rgb(imageBold);
    imageBold = imageBold * 255;
end