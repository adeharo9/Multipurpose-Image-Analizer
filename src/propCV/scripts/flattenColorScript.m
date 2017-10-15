clear;
close all;
clc;

addpath('../functions/');
addpath('../../common/functions/');
addpath('../../../samples/propCV/');

imageBasePath = 'propCV_';
imageFormat = '.png';
imagePath = strcat(imageBasePath, '13', imageFormat);
imageSaveBasePath = '../../../output/propCV/';
imageSavePath = strcat(imageSaveBasePath, 'flatten_', imagePath);

image = flattenColor(imagePath);

imwrite(image, imageSavePath);