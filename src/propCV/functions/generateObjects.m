function [num] = generateObjects(I,start)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Ibin = abs(findEdges(I))>0;
if nargin < 2
    Ibin = fillGaps(Ibin(3:end-2,3:end-2));
else
    Ibin = fillGaps(Ibin(3:end-2,3:end-2),start);
end
num = extractObjects(Ibin, I(2:end-1,2:end-1,:));
end