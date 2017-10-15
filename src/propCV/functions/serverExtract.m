function [Iout] = serverExtract(s)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
fid = fopen('decodedImage.jpg', 'wb');
fwrite(fid, s, 'uint8');            % dump the raw binary to the hard disk
fclose(fid);
I = imread('decodedImage.jpg');
%I = imread(s);
numObjects = generateObjects(I);
Iout = uint8(zeros(numObjects,1));
for i = 1:numObjects
    fid = fopen(strcat('object_',num2str(i),'.png'));
    A = uint8(fread(fid));
    Iout(i,1) = size(A,1);
    Iout(i,2:size(A,1)+1) = A;
    fclose(fid);
end
end

