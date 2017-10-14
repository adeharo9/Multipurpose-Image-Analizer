function [I1] = eraseLevel1Gradient(I)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
I1 = I;
I2 = zeros(size(I,1),size(I,2),3);
while ~isequal(I1, I2)
    disp('Vertical');
    I2 = I1;
    I1 = eraseEasyGradient(I1,'vert');
end
I2 = zeros(size(I,1),size(I,2),3);
while ~isequal(I1, I2)
    disp('Horizontal');
    I2 = I1;
    I1 = eraseEasyGradient(I1,'horz');
end
end

