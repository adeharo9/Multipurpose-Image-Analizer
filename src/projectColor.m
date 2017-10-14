function [minColor] = projectColor(color, projectionSet)
    color = cast(color, 'like', projectionSet(1, :));
    minModule = norm(projectionSet(1, :) - color);
    minColor = projectionSet(1, :);
    
    for i = 2 : size(projectionSet, 1)
        module = norm(projectionSet(i, :) - color);
        if module < minModule
            minModule = module;
            minColor = projectionSet(i, :);
        end
    end
end