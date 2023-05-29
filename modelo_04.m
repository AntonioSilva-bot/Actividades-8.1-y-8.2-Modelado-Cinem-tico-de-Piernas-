%Actividad leg_2
%Limpieza de pantalla
clear all
close all
clc
%Calculamos las matrices de transformación homogénea
%Inicio

H0=SE3;
H0_1 = SE3(roty(3.1), [4 6 3]); % Inicializamos el punto de origen con rotación en z de 180 grados
H0_2 = SE3(rotz(4.1), [0 0 0]); % Inicializamos el punto de origen con rotación en z de 180 grados

H1_1 = SE3(roty(3.1), [4 4 2]);  
H1_2 = SE3(rotz(4.1), [0 0 0]);


H2_1 = SE3(rotx(1.58), [4 4 2]);
H2_2 = SE3(roty(0.6), [0 0 0]);

H3_1 = SE3(roty(1.5), [4 4 2]);
H3_2 = SE3(rotx(1.2*-pi), [0 0 0]);

H4_1 = SE3(roty(1.5), [3 3 1]);
H4_2 = SE3(rotx(1.2*-pi), [0 0 0]);

H5=SE3;
H5_1 = SE3(roty(-pi/2), [1 1 0]);
H5_2 = SE3(rotz(-pi/2), [0 0 0]);

H6_1 = SE3(rotx(pi/2), [1 1 0]);
H6_2 = SE3(rotz(pi/2), [0 0 0]);

H7_1 = SE3(rotx(pi/2), [1 -1 0]);
H7_2 = SE3(rotz(pi/2), [0 0 0]);
%H0 =SE3 % Inicializamos el punto de origen con rotación en z de 180 grados

H00= H0*H0_1*H0_2;
H10= H1_1*H1_2;
H20= H2_1*H2_2;
H30= H3_1*H3_2; %Matriz de transformación homogenea global de 3 a 0 
H40 = H4_1*H4_2;
H50 = H5*H5_1*H5_2;
H60 = H6_1*H6_2;
H70 = H7_1*H7_2;
%Esta parte no la cambio
x=[0 0 0 0 0 0 0 0 0 0];
y=[0 0 0 0 0 0 0 0 0 0];
z=[0 0 0 0 0 0 0 0 0 0];

plot3(x, y, z,'LineWidth', 1.5); axis([-2 6 -2 8 -1 4]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H00,'rgb','axis', [-2 2 -2 4 -2 0])
%Realizamos una animación para la siguiente trama
pause;
tranimate(H00, H10,'rgb','axis', [-2 2 -2 4 -2 0])
%Realizamos una animación para la siguiente trama
 pause;
 tranimate(H10, H20,'rgb','axis', [-2 2 -2 4 -2 0])
% %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H20, H30,'rgb','axis', [-2 2 -2 4 -2 0])
 pause;
 tranimate(H30, H40,'rgb','axis', [-2 2 -2 4 -2 0])
 % %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H40, H50,'rgb','axis', [-2 4 -2 6 -2 2])
% disp(H50)
 % %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H50, H60,'rgb','axis', [-2 4 -2 6 -2 2])
% disp(H60)
 % %Realizamos una animación para la siguiente trama
 pause;
  tranimate(H60, H70,'rgb','axis', [-2 4 -2 6 -2 2])
% disp(H60)
 % %Realizamos una animación para la siguiente trama
 pause;
