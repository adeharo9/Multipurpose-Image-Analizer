function [backColor] = backgroundColor(image)
    bW = [[0, 0, 0]; [255, 255, 255]];
    backColor = background(image);
    backColor = projectColor(backColor, bW);
end