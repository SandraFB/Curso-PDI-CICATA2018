clear all;
clc;
warning off;

%pkg load image

I=imread('C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\flor.jpg');
I2=rgb2gray(I); %hist(I2);xlabel('Nivel de intensidad');ylabel('Frecuencia');
imwrite(I2, 'C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\florgris.jpg')
I3=im2double(I2); %bw = im2bw (I3, "moments");
bw = im2bw (I2, 0.2);
imshow(bw), title('Imagen binarizada para umbral=50') %I4=im2bw(I3); %imshow(I)
imwrite(bw, 'C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\florbinarizada.jpg')

Ir=I(:,:,1);
Ig=I(:,:,2);
Ib=I(:,:,3);

imwrite(Ig, 'C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\florverde.jpg')
imwrite(Ir, 'C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\florroja.jpg')
imwrite(Ib, 'C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\florazul.jpg')
