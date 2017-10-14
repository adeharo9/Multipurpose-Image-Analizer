function [b] = similarColor(color1, color2)
    b = norm(color2 - color1) <= sqrt(3)*255*0.1;
end