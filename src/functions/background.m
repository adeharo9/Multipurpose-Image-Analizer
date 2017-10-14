function [backColor] = background(imagePath)
    image = imread(imagePath);
    
    hSize = size(image, 2);
    vSize = size(image, 1);
    
    colors = zeros(256, 256, 256);
    
    for i = 1 : vSize
        for j = 1 : hSize
            c = int16(reshape(image(i, j, :), 1, 3)) + 1;
            colors(c(1), c(2), c(3)) = colors(c(1), c(2), c(3)) + 1;
        end
    end
    
    [mB, B] = max(colors, [], 3);
    [mG, G] = max(mB, [], 2);
    [~, R] = max(mG, [], 1);
    
    G = G(R);
    B = B(R, G);
    
    R = R - 1;
    G = G - 1;
    B = B - 1;
    
    backColor = [R, G, B];
    
end