function [Iout] = serverExtract(s)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if ~exist('../../../output/servers/', 'dir')
    mkdir '../../../output/servers/';
end

fid = fopen('../../../output/servers/decodedImage.jpg', 'wb');
fwrite(fid, s, 'uint8');            % dump the raw binary to the hard disk
fclose(fid);
I = imread('decodedImage.jpg');
numObjects = generateObjects(I);
Iout = uint32(zeros(numObjects,1));
for i = 1:numObjects
    fid = fopen(strcat('../../../output/servers/object_',num2str(i),'.png'));
    A = uint32(fread(fid));
    Iout(i,1) = size(A,1);
    Iout(i,2:size(A,1)+1) = A;
    fclose(fid);
end
end

