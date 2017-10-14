function [I] = fillGaps(I, start)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
persistent stack nb

sizei = size(I,1);
sizej = size(I,2);

if isempty(stack) || size(stack,1) ~= sizei*sizej
    stack = uint16(zeros(sizei*sizej,2));
    nb = [-1,0;1,0;0,1;0,-1];
end
if nargin < 2
    start = [1,1];
end

visited = false(sizei,sizej);
stackP = 1;
stack(1,:) = start;
while stackP > 0
    y = stack(stackP,1);
    x = stack(stackP,2);
    stackP = stackP-1;
    if visited(y,x)
        continue
    end
    visited(y,x) = true;
    for i = 1:size(nb)
        nbi = y+nb(i,1);
        nbj = x+nb(i,2);
        if nbi > 0 && nbi <= sizei && nbj > 0 && nbj <= sizej && ~visited(nbi,nbj) && ~I(nbi,nbj)
            stackP = stackP+1;
            stack(stackP,:) = [nbi,nbj];
        end
    end
end
I(~visited) = true;
end

