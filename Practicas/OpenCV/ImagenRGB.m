clear all;
clc;
warning off;

%pkg load image

I=imread('C:\Users\fubs9\Downloads\flor.jpg');
I2=rgb2gray(I); %hist(I2);xlabel('Nivel de intensidad');ylabel('Frecuencia');
imwrite(I2, 'C:\Users\fubs9\Downloads\florgris.jpg')
I3=im2double(I2); %bw = im2bw (I3, "moments");
bw = im2bw (I2, 0.2);
%imshow(bw), title('Imagen binarizada para umbral=50') %I4=im2bw(I3); %imshow(I)
imwrite(bw, 'C:\Users\fubs9\Downloads\florbinarizada.jpg')

Ir=I(:,:,1);
Ig=I(:,:,2);
Ib=I(:,:,3);

imwrite(I2-Ib-Ig, 'C:\Users\fubs9\Downloads\florverde.jpg')
imwrite(I-Ib-Ir, 'C:\Users\fubs9\Downloads\florroja.jpg')
imwrite(I-Ir-Ig, 'C:\Users\fubs9\Downloads\florazul.jpg')