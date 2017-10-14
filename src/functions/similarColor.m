function [b] = similarColor(color1, color2, errP)
    module = norm(color2 - color1);
    
    if ~exist('errP', 'var')
        errP = 0.1;
    end
    
    b =  module > 0 && module <= sqrt(3) * 255 * errP;
end