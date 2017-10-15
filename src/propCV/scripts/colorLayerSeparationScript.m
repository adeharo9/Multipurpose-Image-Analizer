clear;
close all;
clc;

addpath('../functions/');
addpath('../../common/functions/');
addpath('../../../samples/propCV/');

imageBasePath = 'propCV_';
imageFormat = '.png';
imageSaveBasePath = '../../../output/propCV/';
imageSavePartialPath = strcat(imageSaveBasePath, 'layer_', imageBasePath);

for i = 2 : 2
    if i < 10
        imagePath = strcat(imageBasePath, '0', num2str(i), '.png');
    else
        imagePath = strcat(imageBasePath, num2str(i), '.png');
    end

    image = imread(imagePath);
    colorFrequence = getColorsByFrequence(image);

    for j = 1 : size(colorFrequence, 1)
        imageLayer = selectColor(image, colorFrequence(j, :));
        
        if i < 10
            imageSavePath = strcat(imageSavePartialPath, '0', num2str(i), '_');
            if j < 10
                imageSavePath = strcat(imageSavePath, '0');
            end
        else
            imageSavePath = strcat(imageSavePartialPath, num2str(i), '_');
            if j < 10
                imageSavePath = strcat(imageSavePath, '0');
            end
        end
        
        imageSavePath = strcat(imageSavePath, num2str(j), imageFormat);
        imwrite(imageLayer, imageSavePath);
    end
end