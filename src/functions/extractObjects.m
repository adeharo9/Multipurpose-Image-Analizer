function [] = extractObjects(I,Iref)
%EXTRACT Summary of this function goes here
%   Detailed explanation goes here

sizei = size(I,1);
sizej = size(I,2);
visited = false(sizei,sizej);
imCount = 1;
for i = 1:sizei
    for j = 1:sizej
        if ~visited(i,j) && I(i,j)
            [mini, minj, maxi, maxj, visited] = recognizeObject(i,j,I,visited);
            sizeTi = (maxi-mini)+1;
            sizeTj = (maxj-minj)+1;
            if sizeTi >= 6 && sizeTj >= 6
                imwrite(Iref(mini:maxi,minj:maxj,:),strcat('object_',num2str(imCount),'.png'));
                imCount = imCount+1;
            end
        end 
    end
end
end