close all
imagenOriginal = imread('propCV_14.png');
imagen = rgb2gray(imagenOriginal);
imagen = imbinarize(imagen, graythresh(imagen));
imshow(imagen);
% imshow(imagen);
% squareee2 = strel('square',10);
% imshow(imerode(imagen, squareee2));

% bw2 = imfill(~imagen, 'holes');
% figure, imshow(bw2);

[L,num]=bwlabel(~imagen);
vislabels(L);
% for i = 1:num
%     imwrite(imagen - L1 == i,strcat(num2str(i),'.png'));
% end

 vSize = size(L, 1);
 hSize = size(L, 2);
 L1 = zeros(vSize, hSize, 3, 'uint8');
% 
% for i = 1 : vSize
%     for j = 1 : hSize
%         L1(i, j, :) = (L(i, j) ~= 0) * 255 * [1, 1, 1];
%     end
% end



% Procesamiento morfológico
% imagen=bwmorph(imagen,'open'); % Eliminar picos
% figure, imshow(imagen);
% imagen=bwmorph(imagen,'close'); % Eliminar huecos
% figure, imshow(imagen);

for i = 1 : vSize
    for j = 1 : hSize
        if L(i,j) > 0
            L1(i, j, :) = imagenOriginal(i, j, :);
        end
    end
end

imwrite(L1,'adios.png');


% squareee = strel('square',2);
% figure, imshow(imdilate(imagen,squareee));
% squareee2 = strel('square',14);
% figure, imshow(imerode(imdilate(imagen,squareee),squareee2));
% figure, imshow(imerode(imerode(imdilate(imagen,squareee),squareee2),squareee2));
% imagenFinal = imerode(imerode(imdilate(imagen,squareee),squareee2),squareee2);
% % Etiquetar los objetos de la imagen
% L=bwlabel(~imagenFinal);
% vislabels(L);