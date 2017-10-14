function [Iout] = flatColors()
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

I = imread('lel.png');
threshold = 20;

visited = false(size(I,1), size(I,2));
Iout = I;
for i = 1:size(I,1)
    for j = 1:size(I,2)
        if ~visited(i,j)
            [Iout, visited] = flatRegion(Iout,visited,threshold,i,j);
        end
    end
end
end