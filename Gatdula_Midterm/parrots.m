clc;
close all;
clear all;

f=imread('C:/Users/PC/Desktop/CPEN111/parrots.jpg');
figure(1),imshow(f); % display original image
whos f;               % show in command window information about image
f2=rgb2gray(f);       % convert original image from rgb to gray scale color
figure (2),imshow(f2)
figure (3),imshow(f2,[0 255]); % display the converted image
