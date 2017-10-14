clc;
addpath('../samples/super_mario_bros/');
imageBasePath = 'super_mario_bros_';

for i = 1 : 1
    if i < 10
        imagePath = strcat(imageBasePath, '0', num2str(i), '.png');
    else
        imagePath = strcat(imageBasePath, num2str(i), '.png');
    end

    image = imread(imagePath);
    colorFrequence = getColorsByFrequence(image);

    for j = 1 : size(colorFrequence, 1)
        image = selectColor(image, colorFrequence(j, :));
        
        if i < 10
            if j < 10
                imwrite(image, strcat('../output/', 'layer_', imageBasePath, '0', num2str(i), '_0', num2str(j), '.png'));
            else
                imwrite(image, strcat('../output/', 'layer_', imageBasePath, '0', num2str(i), '_', num2str(j), '.png'));
            end
        else
            if j < 10
                imwrite(image, strcat('../output/', 'layer_', imageBasePath, num2str(i), '_0', num2str(j), '.png'));
            else
                imwrite(image, strcat('../output/', 'layer_', imageBasePath, num2str(i), '_', num2str(j), '.png'));
            end
        end
    end
end

% for i = 1 : 11
%     imagePath = 'super_mario_bros_';
%     if(i < 10)
%         imagePath = strcat(imagePath, '0');
%     end
%     
%     imagePath = strcat(imagePath, num2str(i), '.png');
% 
%     back = background(imagePath);
%     deleteColor(imagePath, back);
% end

% pSize = zeros(1, 442);

% for i = 310 : 442
%     pSize(i) = pixelSize('super_mario_bros_01.png', i);
%     disp('Index: ');
%     disp(i);
%     disp('pixelSize: ');
%     disp(pSize(i));
% end