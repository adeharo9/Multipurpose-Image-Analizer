function [code] = serverOcr(s)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if ~exist('../../../output/servers/', 'dir')
    mkdir '../../../output/servers/';
end

fid = fopen('../../../output/servers/decodedImage.jpg', 'wb');
fwrite(fid, s, 'uint8');            % dump the raw binary to the hard disk
fclose(fid);
I = imread('../../../output/servers/decodedImage.jpg');
code = ocrFunction(I);
end