I = imread('1680x1050.jpg');
%I = Iout;
I1 = I;
I2 = zeros(size(I,1),size(I,2),3);
while ~isequal(I1, I2)%max(max(max(abs(int16(I1)-int16(I2))))) > 30
    max(max(max(abs(int16(I1)-int16(I2)))))
    disp('Vertical');
    I2 = I1;
    I1 = eraseEasyGradient(I1,'vert');
end
I2 = zeros(size(I,1),size(I,2),3);
while ~isequal(I1, I2)%max(max(max(abs(int16(I1)-int16(I2))))) > 30
    max(max(max(abs(int16(I1)-int16(I2)))))
    disp('Horizontal');
    I2 = I1;
    I1 = eraseEasyGradient(I1,'horz');
end
imshow(I1);
