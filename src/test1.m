clc;

pSize = zeros(1, 442);

for i = 310 : 442
    pSize(i) = pixelSize('super_mario_bros_01.png', i);
    disp('Index: ');
    disp(i);
    disp('pixelSize: ');
    disp(pSize(i));
end