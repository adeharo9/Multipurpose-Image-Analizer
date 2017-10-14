function [Iout] = eraseEasyGradient(I, mode)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Iout = I;
if strcmp(mode, 'vert')
    nb = [-1,0;1,0];
elseif strcmp(mode, 'horz')
    nb = [0,-1;0,1];
end

for i = 1:size(I,1)
    for j = 1:size(I,2)
        nearestColor = [8192,8192,8192];
        minDist = 999999999;
        col = reshape(Iout(i,j,:),1,3);
        for n = 1:size(nb)
            nbi = nb(n,1)+i;
            nbj = nb(n,2)+j;
            if nbi > 0 && nbi <= size(I,1) && nbj > 0 && nbj <= size(I,2)
                colnb = reshape(Iout(nbi,nbj,:),1,3);
                dist = norm(double(int16(colnb)-int16(col)));
                if dist < minDist
                    nearestColor = colnb;
                    minDist = dist;
                end
            end
        end
        Iout(i,j,:) = uint8(nearestColor);
    end
end
end

