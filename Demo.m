clear all; clc; close all;
I=im2double(imread('3.jpg')); 

hsv = rgb2hsv(I);
delta = 6;
tic; hsv(:,:,3) = AIF(hsv(:,:,3), delta); toc;
x1 = hsv2rgb(hsv);
figure; imshow([I,x1]);

% imwrite(x1,'1_AIF.jpg')