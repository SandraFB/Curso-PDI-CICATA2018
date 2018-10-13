clear all;
clc;
warning off;

%pkg load image

I=imread('C:\Users\congreso\Curso-PDI-CICATA2018\Practicas\Octave\flor.jpg');
I2= imresize (I, 1);    # Devuelve la imagen en el tamaño original
I3= imresize (I, 1.5);  # Ajusta el tamaño de la imagen 1.5 veces la imagen original
I4= imresize (I, 0.5);  # Ajusta el tamaño de la imagen a la mitad
I5= imresize (I, 2);    # Ajusta el tamaño de la imagen al doble
I6= imresize (I, [12 61]); # Ajusta el tamaño de la imagen a 12x61 pixeles

%Con los conocimientos aprendidos de la práctica anterior, muestra las imágenes en la pantalla y guárdalas en tu carpeta de trabajo.
%(10 líneas de código)