function [image] = ocrPreprocessor(image, threshold)
    
    if ~exist('threshold', 'var')
        threshold = 0.25;
    elseif threshold < 0
        threshold = 0;
    elseif threshold > 1
        threshold = 1;
    end
    
    [backColor, projColor] = backgroundColor(image);
    image = ocrZoom(image);
    image = project(image, backColor, projColor);
    image = ocrBold(image, threshold, projColor);
end