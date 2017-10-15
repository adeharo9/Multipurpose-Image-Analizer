function [Iout] = serverLayer(s)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if ~exist('../../../output/servers/', 'dir')
    mkdir '../../../output/servers/';
end

fid = fopen('../../../output/servers/decodedImage.jpg', 'wb');
fwrite(fid, s, 'uint8');            % dump the raw binary to the hard disk
fclose(fid);
I = imread('../../../output/servers/decodedImage.jpg');
imLayers = colorLayerSeparation(I);
Iout = uint32(zeros(size(imLayers,1),1));
for i = 1:size(imLayers,1)
    imwrite(reshape(imLayers(i,:,:,:), size(imLayers, 2), size(imLayers, 3), 3, 1),'../../../output/servers/temp.png');
    fid = fopen('../../../output/servers/temp.png');
    A = uint32(fread(fid));
    Iout(i,1) = size(A,1);
    Iout(i,2:size(A,1)+1) = A;
    fclose(fid);
end

