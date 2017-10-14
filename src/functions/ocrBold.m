function [imageBold] = ocrBold(image, threshold, projColor)
%     imageBold = rgb2Gray(image, threshold);
    imageBold = rgb2gray(image);
    
    if isequal(projColor, [0, 0, 0])
        th = threshold;
    else
        th = 1 - threshold;
    end
    imageBold = imageBold >= ceil(255*th);
%     if isequal(projColor, [0, 0, 0])
%         imageBold = imageBold > 0;
%     else
%         imageBold = imageBold == 255;
%     end
    %imageBold = gray2Rgb(imageBold);
    if isequal(projColor, [255, 255, 255])
        imageBold = ~imageBold;
    end
    imageBold = imageBold * 255;
end