clear;
close all;
clc;
addpath('../functions/');
addpath('../../../samples/ocr/');
addpath('../../common/functions/');
imageBasePath = 'ocr_';
imageFormat = '.png';
imagePath = strcat(imageBasePath, '12', imageFormat);
imageSaveBasePath = '../../../output/ocr/';
imageSavePath = strcat(imageSaveBasePath, imagePath);

image = imread(imagePath);
image = ocrPreprocessor(image);

imwrite(image, imageSavePath);

res = ocr(image, 'TextLayout', 'Block');

cmd = replace(res.Text, "‘", "'");
cmd = replace(cmd, "’", "'");
cmd = strrep(cmd,sprintf(':\n'),sprintf(';\n'));

eval(cmd);