function [image] = ocrZoom(image)
    vSize = size(image, 1);
    hSize = size(image, 2);
    
    if vSize * hSize < 1000000
        scale = sqrt(1000000 / (vSize * hSize));
        image = imresize(image, scale);
    end
end