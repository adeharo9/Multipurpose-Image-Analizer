clear;
close all;
clc;
addpath('../functions/');
addpath('../../samples/ocr/');
imageBasePath = 'ocr_';
imageFormat = '.png';
imagePath = strcat(imageBasePath, '09', imageFormat);
imageSaveBasePath = '../../output/';
imageSavePath = strcat(imageSaveBasePath, imagePath);

image = imread(imagePath);
image = ocrPreprocessor(image);

imwrite(image, imageSavePath);

res = ocr(image, 'TextLayout', 'Block');
res.Text