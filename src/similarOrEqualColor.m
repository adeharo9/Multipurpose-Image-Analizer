function [b] = similarOrEqualColor(color1, color2)
    module = norm(color2 - color1);
    b =  module <= sqrt(3)*255*0.1;
end