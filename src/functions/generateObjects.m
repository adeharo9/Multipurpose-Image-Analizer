function [] = generateObjects(I,start)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
Ibin = abs(findEdges(I))>0;
Ibin = fillGaps(Ibin(3:end-2,3:end-2),start);
extractObjects(Ibin, I(2:end-1,2:end-1,:));
end