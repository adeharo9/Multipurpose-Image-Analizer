function [imageProcessed] = ocrPreprocessor(image, threshold)
    
    if ~exist('threshold', 'var')
        threshold = 0.5;
    elseif threshold < 0
        threshold = 0;
    elseif threshold > 1
        threshold = 1;
    end
    
    imageProcessed = image;
    imageProcessed = ocrZoom(imageProcessed);
    imageProcessed = ocrBold(imageProcessed, threshold);
    imageProcessed = ocrFlat(imageProcessed);
end