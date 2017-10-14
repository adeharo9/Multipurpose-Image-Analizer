function [imageZoom] = ocrZoom(image)
    vSize = size(image, 1);
    hSize = size(image, 2);
    minSize = min(vSize, hSize);
    
    if minSize < 1080
        scale = 1080 / minSize;
        imageZoom = imresize(image, scale);
    else
        imageZoom = image;
    end
end