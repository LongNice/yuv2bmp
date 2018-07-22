clc;
clear;
close all;

width = 1334; height = 750; len = width * height * 1.5;
file = fopen('vpp_1334x750_1D.yuv', 'r');
data = fread(file, len, 'uint8=>uint8');
[Y,U,V] = getYUV(data,width, height);
data = reshape(data,width,height*1.5);
data = fliplr(data);
data = rot90(data);
figure;
imshow(data);
imwrite(data,'vpp_1334x750_yuv(NV12).bmp');
[UVWidth, UVHeight] = size(U); %U size is equal to V size
[R,G,B] = yuv2rgb(Y, U, V, UVWidth, UVHeight);
img = createRGBImage(R,G,B,width,height);
figure;
imshow(img);
imwrite(img,'vpp_1334x750.bmp');
