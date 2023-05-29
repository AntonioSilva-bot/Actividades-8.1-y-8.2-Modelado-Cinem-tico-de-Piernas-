%Limpieza de pantalla
clear all
close all
clc

%Calculamos las matrices de transformación homogénea
H0=SE3;
H1=SE3(rotx(5*pi/2), [0 0 3]);
H2=SE3(rotx(pi/2), [0 0 3]);
H3=SE3(rotx(pi/2),[2 0 3]);
H4=SE3(rotx(pi/2), [4 0 3]);
H5=SE3(rotx(pi/2),[6 0 3]);


H20= H1*H2;
H30= H20*H3; %Matriz de transformación homogenea global de 3 a 0 

x=[0   0  0  0 0 0  0  0   1   3  5  7 ];
y=[0   0  0 -2 0 3  0  0   0   0  0  0 ];
z=[0 -0.5 0  0 0 0  0  3   3   3  3  3 ];

plot3(x, y, z,'LineWidth', 1.5); axis([-1 7 -1 4 -1 4]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 7 -1 4 -1 4])
%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 7 -1 4 -1 4])
%Realizamos una animación para la siguiente trama
pause;
tranimate(H2, H3,'rgb','axis', [-1 7 -1 4 -1 4])
%Realizamos una animación para la siguiente trama
pause;
tranimate(H3, H4,'rgb','axis', [-1 7 -1 4 -1 4])
%Realizamos una animación para la siguiente trama
pause;
tranimate(H4, H5,'rgb','axis', [-1 7 -1 4 -1 4])
%Realizamos una animación para la siguiente trama
%pause;
%tranimate(H20, H30,'rgb','axis', [-1 7 -1 4 -1 4])
%disp(H30)