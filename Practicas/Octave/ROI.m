clear all;
clc;
warning off;

%pkg load image

%Filtros 
I=rgb2gray(imread('C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\flor.jpg'));
canny= edge (I, "Canny");    
imshow(canny)
imwrite(canny, 'C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\Canny.jpg')
canny2= edge (I, "Canny",0.2);
imshow(canny2)
imwrite(canny2, 'C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\Canny2.jpg')

%Histograma de la imagen
hist(I)

%Utilizando el histograma de la imagen, encuentra el contorno del objeto con filtros Prewitt, Sobel y Roberts.


%Segmentación
bw = im2bw (I, 0.2);
Iseg=I.*(imcomplement(bw));
subplot(1,3,1);imshow(I); title('Imagen original')
subplot(1,3,2);imshow(bw); title('Imagen binarizada')
subplot(1,3,3);imshow(Iseg); title('Imagen segmentada')

%Utilizando los conocimientos previos, segmenta una imagen en color, muestra y guarda tus resultados.
