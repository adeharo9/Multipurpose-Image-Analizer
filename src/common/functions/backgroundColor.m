function [backColor, projColor] = backgroundColor(image)
    bW = [[0, 0, 0]; [255, 255, 255]];
    backColor = background(image);
    projColor = projectColor(backColor, bW);
end