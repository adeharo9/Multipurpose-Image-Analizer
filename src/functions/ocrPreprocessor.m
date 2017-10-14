function [imageProcessed] = ocrPreprocessor(image, threshold)
    
    if ~exist('threshold', 'var')
        threshold = 0.25;
    elseif threshold < 0
        threshold = 0;
    elseif threshold > 1
        threshold = 1;
    end
    
    [backColor, projColor] = backgroundColor(image);
    imageProcessed = ocrZoom(image);
    imageProcessed = project(imageProcessed, backColor, projColor);
    imageProcessed = ocrBold(imageProcessed, threshold, projColor);
end