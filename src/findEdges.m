function [Iout] = findEdges(I)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
kernel = [0,0,0;-1,0,1;0,0,0];
Ihorz = conv2(kernel,rgb2gray(I));
Ivert = conv2(kernel',rgb2gray(I));
Iout = Ihorz+Ivert;
end