function [pSize] = pixelSize(imagePath, error)
    image = imread(imagePath);
    
    hSize = size(image, 2);
    vSize = size(image, 1);
    
    pSize = hSize * vSize + 1;
    
    for i = 1 : vSize
        
        count = 1;
        
        for j = 2 : hSize
            diff = int16(image(i, j, :)) - int16(image(i, j-1, :));
            diff = reshape(diff, 1, 3);
            if norm(double(diff)) >= error
                pSize = min(pSize, count);
                count = 1;
            else
                count = count + 1;
            end
            
        end
    end
end