clc;
close all;
clear all;

f=imread('C:/Users/PC/Desktop/CPEN111/nature.jpg');
figure(1),imshow(f); %display original image
whos f                % show image info
f2=rgb2gray(f);       % convert orginal picture from rgb to gray scale
figure (2), imshow(f2); % display converted image as figure 2
whos f2                 %show image info of gray scaled image

red=f;        % line 12 to 14 is for making the image red
red(:,:,2)=0;
red(:,:,3)=0;

green=f;      % line 16 to 18 is for making the image green
green(:,:,1)=0;
green(:,:,3)=0;

blue=f;       % line 20 to 22 is for making the image blue
blue(:,:,1)=0;
blue(:,:,2)=0;

% line 24 to 28 is saving the images to png
imwrite(f2,'C:/Users/PC/Desktop/CPEN111/nature_gray.png');
imwrite(red,'C:/Users/PC/Desktop/CPEN111/nature_red.png');
imwrite(green,'C:/Users/PC/Desktop/CPEN111/nature_green.png');
imwrite(blue,'C:/Users/PC/Desktop/CPEN111/nature_blue.png');

% the rest of the line is for subplot of rgb colored images
figure(3),
subplot(1,3,1),imshow(red),title('Nature Red');% Display image in rgb
subplot(1,3,2),imshow(green),title('Nature Green');% Display image in rgb
subplot(1,3,3),imshow(blue),title('Nature Blue');% Display image in rgb
