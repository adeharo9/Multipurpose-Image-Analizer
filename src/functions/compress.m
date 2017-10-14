function [Iout] = compress(I, pSi, pSj)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Iout = uint8(zeros(floor(size(I,1)/pSi), floor(size(I,2)/pSj),3));
for i = 0:pSi:(size(I,1)-pSi)
    for j = 0:pSj:(size(I,2)-pSj)
        Iout(floor(i/pSi+1), floor(j/pSj+1),:) =  uint8(median(median(I(i+1:i+pSi,j+1:j+pSj,:))));
    end
end
end