clear;
close all;
clc;
addpath('../functions/');
addpath('../../common/functions/');
addpath('../../../samples/propCV/');
imageBasePath = 'propCV_';
imagePath = strcat(imageBasePath, '11.png');
imageSavePath = strcat('../../../output/propCV/', 'flatten_', imagePath);

image = flattenColor(imagePath);

imwrite(image, imageSavePath);