clc;
clc;
addpath('../samples/super_mario_bros/');
imageBasePath = 'super_mario_bros_';
imagePath = strcat(imageBasePath, '12.png');
imageSavePath = strcat('../output/', 'flatten_', imagePath);

image = flattenColor(imagePath);

imwrite(image, imageSavePath);