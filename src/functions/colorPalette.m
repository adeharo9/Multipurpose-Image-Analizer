function [cPalette] = colorPalette()
    c = [0; 255];
    cPalette = zeros(size(c, 1)^size(c, 1), 3);
    
    for r = 1 : size(c, 1)
        for g = 1 : size(c, 1)
            for b = 1 : size(c, 1)
                cPalette((r-1)*size(c, 1)^2 + (g-1)*size(c, 1) + b, :) = [c(r), c(g), c(b)];
            end
        end
    end
end