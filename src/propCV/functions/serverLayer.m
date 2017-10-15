function [Iout] = serverLayer(s)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
fid = fopen('decodedImage.jpg', 'wb');
fwrite(fid, s, 'uint8');            % dump the raw binary to the hard disk
fclose(fid);
I = imread('decodedImage.jpg');
imLayers = colorLayerSeparation(I);
Iout = uint8(zeros(size(imLayers,1),1));
for i = 1:size(imLayers,1)
    imwrite(imLayers(i,:,:,:),'temp.png');
    fid = fopen('temp.png');
    A = uint8(fread(fid));
    Iout(i,1) = size(A,1);
    Iout(i,2:size(A,1)+1) = A;
    fclose(fid);
end
