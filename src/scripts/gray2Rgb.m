function [imageRGB] = gray2Rgb(image)
    imageRGB = cat(3, image, image, image) * 255;
end