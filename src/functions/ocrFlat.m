function [imageFlat] = ocrFlat(image)
    imageFlat = flatColors(image, 45);
end