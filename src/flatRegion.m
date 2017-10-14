function [I, visited] = flatRegion(I, visited, threshold, i, j)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
persistent stack aux nb
sizeI = size(I,1);
sizeJ = size(I,2);
if isempty(stack) || sizeI*sizeJ ~= size(stack,1)
    stack = zeros(sizeI*sizeJ,2);
    aux = zeros(sizeI*sizeJ,2);
    nb = [-1,0;1,0;0,-1;0,1];
end
stackP = 1;
auxP = 1;
avgSum = uint32([0,0,0]);
stack(1,:) = [i,j];
color = reshape(I(i,j,:),1,3);
while stackP > 0
    y = stack(stackP,1);
    x = stack(stackP,2);
    stackP = stackP-1;
    visited(y,x) = true;
    avgSum = avgSum + uint32(reshape(I(y,x,:),1,3));
    aux(auxP,:) = [y,x];
    auxP = auxP+1;
    for i = 1:size(nb)
        nbi = y+nb(i,1);
        nbj = x+nb(i,2);
        if nbi > 0 && nbi <= sizeI && nbj > 0 && nbj <= sizeJ && ~visited(nbi,nbj)
            color2 = reshape(I(nbi,nbj,:),1,3);
            if norm(double(int16(color)-int16(color2))) < threshold
                stackP = stackP+1;
                stack(stackP,:) = [nbi,nbj];
            end
        end
    end
end
avgC = uint8(avgSum/(auxP-1));
for i = 1:(auxP-1)
    I(aux(i,1), aux(i,2),:) = avgC;
end
end

