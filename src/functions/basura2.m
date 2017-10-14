function [code] = basura2(s)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

disp(language);
fid = fopen('decodedImage.jpg', 'wb');
fwrite(fid, s, 'uint8');            % dump the raw binary to the hard disk
fclose(fid);
I = imread('decodedImage.jpg');
code = ocrFunc(I);
end