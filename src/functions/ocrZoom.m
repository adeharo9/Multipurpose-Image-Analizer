function [image] = ocrZoom(image)
    nPixels = size(image, 1) * size(image, 2);
    
    if nPixels < 1000000
        scale = sqrt(1000000 / nPixels);
        image = imresize(image, scale);
    end
end