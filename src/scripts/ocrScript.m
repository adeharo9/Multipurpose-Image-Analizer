clear;
close all;
clc;
addpath('../functions/');
addpath('../../samples/ocr/');
imageBasePath = 'ocr_';
imageFormat = '.png';
imagePath = strcat(imageBasePath, '04', imageFormat);

    image = imread(imagePath);
% for threshold = 0 : 0.05 : 1
%     image = imread(imagePath);
    image = ocrPreprocessor(image);
    %imshow(image);
    %pause(0.5);
% end

% language = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '(', ')', '[', ']', '{', '}', '+', '-', '*', '/', '%', '&', '|'];
% 
 res = ocr(image);
 res.Text