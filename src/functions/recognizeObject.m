function [mini,minj,maxi,maxj,visited,A] = recognizeObject(i,j,I,visited)
%RECOGNIZE Summary of this function goes here
%   Detailed explanation goes here
persistent stack;

sizei = size(I,1);
sizej = size(I,1);
if isempty(stack) || sizei*sizej ~= size(stack,1)
    stack = uint16(zeros(sizei*sizej,2));
end
A = uint8(zeros(sizei,sizej));
index = 1;
stack(index,:) = [i,j];
nb = [-1,-1;-1,0;-1,1;0,-1;0,1;1,-1;1,0;1,1];
mini = size(I,1)+1;
minj = size(I,2)+1;
maxi = -1;
maxj = -1;
sizei = size(I,1);
sizej = size(I,2);
while index > 0
    y = stack(index,1);
    x = stack(index,2);
    index = index-1;
    if (visited(y,x))
        continue
    end
    A(y,x) = 255;
    visited(y,x) = true;
    mini = min(mini,y);
    maxi = max(maxi,y);
    minj = min(minj,x);
    maxj = max(maxj,x);
    for i = 1:size(nb,1)
        nbi = y+nb(i,1);
        nbj = x+nb(i,2);
        if nbi > 0 && nbi <= sizei && nbj > 0 && nbj <= sizej && ~visited(nbi,nbj) && I(nbi,nbj)
            index = index+1;
            stack(index,:) = [nbi,nbj];
        end
    end
end
end