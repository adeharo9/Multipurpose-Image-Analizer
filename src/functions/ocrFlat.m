function [image] = ocrFlat(image)
    image = flatColors(image, 45);
end