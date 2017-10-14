function [imageBold] = ocrBold(image, threshold)
    imageBold = rgb2gray(image);
    imageBold = imageBold >= ceil(255*threshold);
end