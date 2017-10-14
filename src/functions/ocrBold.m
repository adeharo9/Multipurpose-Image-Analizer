function [imageBold] = ocrBold(image, threshold)
    imageBold = rgb2Gray(image, threshold);
    imageBold = imageBold >= ceil(255*0.75);
    %imageBold = gray2Rgb(imageBold);
    imageBold = imageBold * 255;
end