clc;
close all;
clear all;

pkg load image; %to use the resize command

f=imread('C:/Users/PC/Desktop/CPEN111/Lab1/fruits.png'); %to open the image
imfinfo('fruits.png'); %to show image information
figure(1), imshow('fruits.png'); % to display image
f2=imresize(f,1/2); % to reduce the size by half
imwrite(f,'C:/Users/PC/Desktop/CPEN111/Lab1/fruits2.png'); % to change file name of manipulated immage
figure(2), imshow(f2);
f3=rgb2hsv(f); % to convert the the image from rgb to hsv
imwrite(f, 'C:/Users/PC/Desktop/CPEN111/Lab1/fruits3.png');
figure(3), imshow(f3); % to show the manipulated image
